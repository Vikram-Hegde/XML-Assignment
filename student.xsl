<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html lang="en">
			<head>
				<title>Student Information</title>
				<link rel="stylesheet" href="style.css" />
			</head>
			<body>

				<!-- above not to be deleted -->
				<main>
					<section>
						<table border="1" style="border-collapse: collapse">
							<tr>
								<th>UID</th>
								<th>Name</th>
								<th>University Name</th>
								<th>Branch</th>
								<th>Year of Join</th>
								<th>Email</th>
							</tr>
							<xsl:for-each select="students/student">
								<tr>
									<td>
										<xsl:value-of select="uid" />
									</td>
									<td>
										<xsl:value-of select="name" />
									</td>
									<td>
										<xsl:value-of select="uname" />
									</td>
									<td>
										<xsl:value-of select="branch" />
									</td>
									<td>
										<xsl:value-of select="yoj" />
									</td>
									<td>
										<xsl:value-of select="email" />
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</section>
					<xsl:for-each select="students/student">
						<div class="card">
							<div class="card__header">
								<div class="card__dp">
									<svg height='36' width='36'>
										<use href="#card-dp" />
									</svg>
								</div>
								<div class="card__group" style="--gap: 0;">
									<div class="card__name">
										<xsl:value-of select="name" />
									</div>
									<div class="card__id">
										<xsl:value-of select="uid" />
									</div>
								</div>
								<svg class="card__qr-code" width='42' height='42'>
									<use href="#qr-code" />
								</svg>
							</div>
							<div class="card__group" style="--left: 0.6rem">
								<div class="card__group card__group--horizontal">
									<div class="card__uname card__field">
										<svg height='20' width='20'>
											<use href="#university" />
										</svg>
										<xsl:value-of select="uname" />
									</div>
									<div class="card__course card__field">
										<svg height='20' width='20'>
											<use href="#course" />
										</svg>
										<xsl:value-of select="branch" />
									</div>
								</div>
								<div class="card__email card__field">
									<svg height='20' width='20'>
										<use href="#email" />
									</svg>
									<xsl:value-of select="email" />
								</div>
								<div class="card__batch card__field">
									<svg height='20' width='20'>
										<use href="#calender" />
									</svg>
									<xsl:value-of select="yoj" />
									Batch
								</div>
								<div class="card__address card__field">
									<svg height='20' width='20'>
										<use href="#address" />
									</svg>
									<xsl:value-of select="address" />
								</div>
							</div>
						</div>
					</xsl:for-each>
				</main>
				<svg display="none" xmlns="https://w3.org/1999/svg">
					<symbol id="card-dp" width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M33 15V24M3 15L18 7.5L33 15L18 22.5L3 15Z" stroke="black" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M9 18V25.5C13.5 30 22.5 30 27 25.5V18" stroke="black" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" />
					</symbol>
					<symbol id="qr-code" width="42" height="42" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M15.1667 6.5H8.66667C7.47005 6.5 6.5 7.47005 6.5 8.66667V15.1667C6.5 16.3633 7.47005 17.3333 8.66667 17.3333H15.1667C16.3633 17.3333 17.3333 16.3633 17.3333 15.1667V8.66667C17.3333 7.47005 16.3633 6.5 15.1667 6.5Z" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M43.3333 6.5H36.8333C35.6367 6.5 34.6666 7.47005 34.6666 8.66667V15.1667C34.6666 16.3633 35.6367 17.3333 36.8333 17.3333H43.3333C44.5299 17.3333 45.5 16.3633 45.5 15.1667V8.66667C45.5 7.47005 44.5299 6.5 43.3333 6.5Z" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M15.1667 34.6667H8.66667C7.47005 34.6667 6.5 35.6367 6.5 36.8333V43.3333C6.5 44.5299 7.47005 45.5 8.66667 45.5H15.1667C16.3633 45.5 17.3333 44.5299 17.3333 43.3333V36.8333C17.3333 35.6367 16.3633 34.6667 15.1667 34.6667Z" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M45.5 34.6667H39C37.8507 34.6667 36.7485 35.1232 35.9358 35.9359C35.1232 36.7485 34.6666 37.8507 34.6666 39V45.5" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M45.5 45.5V45.5219" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M26 15.1667V21.6667C26 22.8159 25.5434 23.9181 24.7308 24.7308C23.9181 25.5434 22.8159 26 21.6666 26H15.1666" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M6.5 26H6.52191" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M26 6.5H26.0219" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M26 34.6667V34.6886" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M34.6666 26H36.8333" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M45.5 26V26.0219" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M26 45.5V43.3333" stroke="black" stroke-width="4.33333" stroke-linecap="round" stroke-linejoin="round" />
					</symbol>
					<symbol id='university' width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M18 2H6C4.89543 2 4 2.89543 4 4V20C4 21.1046 4.89543 22 6 22H18C19.1046 22 20 21.1046 20 20V4C20 2.89543 19.1046 2 18 2Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M9 22V18H15V22" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M8 6H8.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M16 6H16.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M12 6H12.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M12 10H12.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M12 14H12.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M16 10H16.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M16 14H16.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M8 10H8.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M8 14H8.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
					</symbol>
					<symbol id='course' width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M4 19.5C4 18.837 4.26339 18.2011 4.73223 17.7322C5.20107 17.2634 5.83696 17 6.5 17H20" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M6.5 2H20V22H6.5C5.83696 22 5.20107 21.7366 4.73223 21.2678C4.26339 20.7989 4 20.163 4 19.5V4.5C4 3.83696 4.26339 3.20107 4.73223 2.73223C5.20107 2.26339 5.83696 2 6.5 2V2Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
					</symbol>
					<symbol id='email' width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M12 16C14.2091 16 16 14.2091 16 12C16 9.79086 14.2091 8 12 8C9.79086 8 8 9.79086 8 12C8 14.2091 9.79086 16 12 16Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M16 8V13C16 13.7957 16.3161 14.5587 16.8787 15.1213C17.4413 15.6839 18.2043 16 19 16C19.7956 16 20.5587 15.6839 21.1213 15.1213C21.6839 14.5587 22 13.7957 22 13V12C21.9999 9.74303 21.2362 7.55248 19.8333 5.78453C18.4303 4.01659 16.4705 2.77523 14.2726 2.2623C12.0747 1.74937 9.76793 1.99504 7.72734 2.95937C5.68676 3.92369 4.03239 5.54996 3.03325 7.57372C2.03411 9.59749 1.74896 11.8997 2.22416 14.1061C2.69936 16.3125 3.90697 18.2932 5.65062 19.7263C7.39428 21.1593 9.57143 21.9603 11.8281 21.9992C14.0847 22.038 16.2881 21.3122 18.08 19.94" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
					</symbol>
					<symbol id='calender' width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M19 4H5C3.89543 4 3 4.89543 3 6V20C3 21.1046 3.89543 22 5 22H19C20.1046 22 21 21.1046 21 20V6C21 4.89543 20.1046 4 19 4Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M16 2V6" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M8 2V6" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M3 10H21" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M8 14H8.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M12 14H12.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M16 14H16.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M8 18H8.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M12 18H12.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M16 18H16.01" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
					</symbol>
					<symbol id='address' width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path d="M3 9L12 2L21 9V20C21 20.5304 20.7893 21.0391 20.4142 21.4142C20.0391 21.7893 19.5304 22 19 22H5C4.46957 22 3.96086 21.7893 3.58579 21.4142C3.21071 21.0391 3 20.5304 3 20V9Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
						<path d="M9 22V12H15V22" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
					</symbol>
				</svg>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>