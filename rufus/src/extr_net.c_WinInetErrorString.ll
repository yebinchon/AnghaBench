; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_net.c_WinInetErrorString.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_net.c_WinInetErrorString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WinInetErrorString.error_string = internal global [256 x i8] zeroinitializer, align 16
@WINAPI = common dso_local global i32 0, align 4
@BOOL = common dso_local global i32 0, align 4
@InternetGetLastResponseInfoA = common dso_local global i32 0, align 4
@LPDWORD = common dso_local global i32 0, align 4
@LPSTR = common dso_local global i32 0, align 4
@WinInet = common dso_local global i32 0, align 4
@error_code = common dso_local global i32 0, align 4
@INTERNET_ERROR_BASE = common dso_local global i32 0, align 4
@INTERNET_ERROR_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"No more handles could be generated at this time.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"The request has timed out.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"An internal error has occurred.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"The URL is invalid.\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"The URL scheme could not be recognized or is not supported.\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"The server name could not be resolved.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"The requested protocol could not be located.\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"A request specified an invalid option value.\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"The length of an option supplied is incorrect for the type of option specified.\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"The request option cannot be set, only queried.\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"The Win32 Internet function support is being shut down or unloaded.\00", align 1
@.str.11 = private unnamed_addr constant [119 x i8] c"The request to connect and log on to an FTP server could not be completed because the supplied user name is incorrect.\00", align 1
@.str.12 = private unnamed_addr constant [118 x i8] c"The request to connect and log on to an FTP server could not be completed because the supplied password is incorrect.\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"The request to connect to and log on to an FTP server failed.\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"The requested operation is invalid.\00", align 1
@.str.15 = private unnamed_addr constant [134 x i8] c"The operation was cancelled, usually because the handle on which the request was operating was closed before the operation completed.\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"The type of handle supplied is incorrect for this operation.\00", align 1
@.str.17 = private unnamed_addr constant [103 x i8] c"The requested operation cannot be carried out because the handle supplied is not in the correct state.\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"The request cannot be made via a proxy.\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"A required registry value could not be located.\00", align 1
@.str.20 = private unnamed_addr constant [88 x i8] c"A required registry value was located but is an incorrect type or has an invalid value.\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"Direct network access cannot be made at this time.\00", align 1
@.str.22 = private unnamed_addr constant [85 x i8] c"An asynchronous request could not be made because a zero context value was supplied.\00", align 1
@.str.23 = private unnamed_addr constant [88 x i8] c"An asynchronous request could not be made because a callback function has not been set.\00", align 1
@.str.24 = private unnamed_addr constant [88 x i8] c"The required operation could not be completed because one or more requests are pending.\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"The format of the request is invalid.\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"The requested item could not be located.\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"The attempt to connect to the server failed.\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"The connection with the server has been terminated.\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"The connection with the server has been reset.\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"Calls for the Win32 Internet function to redo the request.\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"The request to the proxy was invalid.\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"The request failed because the handle already exists.\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"The SSL certificate is invalid.\00", align 1
@.str.34 = private unnamed_addr constant [91 x i8] c"SSL certificate date that was received from the server is bad. The certificate is expired.\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"SSL certificate common name (host name field) is incorrect.\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"The SSL certificate contains errors.\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"The SSL certificate was not revoked.\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"The revocation check of the SSL certificate failed.\00", align 1
@.str.39 = private unnamed_addr constant [85 x i8] c"The application is moving from a non-SSL to an SSL connection because of a redirect.\00", align 1
@.str.40 = private unnamed_addr constant [86 x i8] c"The application is moving from an SSL to an non-SSL connection because of a redirect.\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"Some of the content being viewed may have come from unsecured servers.\00", align 1
@.str.42 = private unnamed_addr constant [107 x i8] c"The application is posting and attempting to change multiple lines of text on a server that is not secure.\00", align 1
@.str.43 = private unnamed_addr constant [64 x i8] c"The application is posting data to a server that is not secure.\00", align 1
@.str.44 = private unnamed_addr constant [110 x i8] c"The requested operation cannot be made on the FTP session handle because an operation is already in progress.\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"The FTP operation was not completed because the session was aborted.\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Gopher? Really??? What is this, 1994?\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"The requested header could not be located.\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"The server did not return any headers.\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"The server response could not be parsed.\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"The supplied header is invalid.\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"The request made to HttpQueryInfo is invalid.\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"The header could not be added because it already exists.\00", align 1
@.str.53 = private unnamed_addr constant [98 x i8] c"The redirection failed because either the scheme changed or all attempts made to redirect failed.\00", align 1
@.str.54 = private unnamed_addr constant [72 x i8] c"This system's SSL library is too old to be able to access this website.\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"Client Authentication certificate needed\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Bad auto proxy script.\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"Unable to download script.\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"Internet has not be initialized.\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"Unable to cache the file.\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"TPC/IP not installed.\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"Internet is disconnected.\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"Server could not be reached.\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"Proxy server could not be reached.\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"A security check prevented internet connection.\00", align 1
@.str.65 = private unnamed_addr constant [77 x i8] c"This connection requires an MSN Security Support Provider Interface package.\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"Please ask Microsoft about that one!\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Unknown internet error 0x%08lX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @WinInetErrorString() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i32 256, i32* %2, align 4
  %3 = load i32, i32* @WINAPI, align 4
  %4 = load i32, i32* @BOOL, align 4
  %5 = load i32, i32* @InternetGetLastResponseInfoA, align 4
  %6 = load i32, i32* @LPDWORD, align 4
  %7 = load i32, i32* @LPSTR, align 4
  %8 = load i32, i32* @LPDWORD, align 4
  %9 = call i32 @PF_TYPE_DECL(i32 %3, i32 %4, i32 %5, i32 %8)
  %10 = load i32, i32* @InternetGetLastResponseInfoA, align 4
  %11 = load i32, i32* @WinInet, align 4
  %12 = call i32 @PF_INIT(i32 %10, i32 %11)
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 @HRESULT_CODE(i32 %13)
  store i32 %14, i32* @error_code, align 4
  %15 = load i32, i32* @error_code, align 4
  %16 = load i32, i32* @INTERNET_ERROR_BASE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @error_code, align 4
  %20 = load i32, i32* @INTERNET_ERROR_LAST, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %0
  %23 = call i8* (...) @WindowsErrorString()
  store i8* %23, i8** %1, align 8
  br label %98

24:                                               ; preds = %18
  %25 = load i32, i32* @error_code, align 4
  switch i32 %25, label %95 [
    i32 147, label %26
    i32 131, label %27
    i32 165, label %28
    i32 161, label %29
    i32 128, label %30
    i32 156, label %31
    i32 145, label %32
    i32 163, label %33
    i32 184, label %34
    i32 148, label %35
    i32 133, label %36
    i32 166, label %37
    i32 167, label %38
    i32 159, label %39
    i32 164, label %40
    i32 149, label %41
    i32 168, label %42
    i32 169, label %43
    i32 153, label %44
    i32 143, label %45
    i32 183, label %46
    i32 150, label %47
    i32 151, label %48
    i32 152, label %49
    i32 142, label %50
    i32 170, label %51
    i32 160, label %52
    i32 182, label %53
    i32 179, label %54
    i32 178, label %55
    i32 174, label %56
    i32 162, label %57
    i32 173, label %58
    i32 135, label %59
    i32 139, label %60
    i32 140, label %61
    i32 138, label %62
    i32 137, label %63
    i32 136, label %64
    i32 171, label %65
    i32 172, label %66
    i32 157, label %67
    i32 181, label %68
    i32 146, label %69
    i32 202, label %70
    i32 203, label %71
    i32 194, label %72
    i32 196, label %72
    i32 200, label %72
    i32 199, label %72
    i32 197, label %72
    i32 198, label %72
    i32 195, label %72
    i32 201, label %72
    i32 193, label %72
    i32 190, label %73
    i32 192, label %74
    i32 187, label %75
    i32 189, label %76
    i32 188, label %77
    i32 191, label %78
    i32 186, label %79
    i32 141, label %80
    i32 180, label %81
    i32 185, label %82
    i32 129, label %83
    i32 154, label %84
    i32 130, label %85
    i32 132, label %86
    i32 177, label %87
    i32 134, label %88
    i32 144, label %89
    i32 175, label %90
    i32 155, label %91
    i32 158, label %92
    i32 176, label %93
  ]

26:                                               ; preds = %24
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %98

27:                                               ; preds = %24
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %98

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %98

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %98

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %98

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %98

32:                                               ; preds = %24
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %98

33:                                               ; preds = %24
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %98

34:                                               ; preds = %24
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %98

35:                                               ; preds = %24
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %98

36:                                               ; preds = %24
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  br label %98

37:                                               ; preds = %24
  store i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.11, i64 0, i64 0), i8** %1, align 8
  br label %98

38:                                               ; preds = %24
  store i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.12, i64 0, i64 0), i8** %1, align 8
  br label %98

39:                                               ; preds = %24
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  br label %98

40:                                               ; preds = %24
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8** %1, align 8
  br label %98

41:                                               ; preds = %24
  store i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.15, i64 0, i64 0), i8** %1, align 8
  br label %98

42:                                               ; preds = %24
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8** %1, align 8
  br label %98

43:                                               ; preds = %24
  store i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.17, i64 0, i64 0), i8** %1, align 8
  br label %98

44:                                               ; preds = %24
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i8** %1, align 8
  br label %98

45:                                               ; preds = %24
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8** %1, align 8
  br label %98

46:                                               ; preds = %24
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.20, i64 0, i64 0), i8** %1, align 8
  br label %98

47:                                               ; preds = %24
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i64 0, i64 0), i8** %1, align 8
  br label %98

48:                                               ; preds = %24
  store i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.22, i64 0, i64 0), i8** %1, align 8
  br label %98

49:                                               ; preds = %24
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %98

50:                                               ; preds = %24
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.24, i64 0, i64 0), i8** %1, align 8
  br label %98

51:                                               ; preds = %24
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8** %1, align 8
  br label %98

52:                                               ; preds = %24
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i8** %1, align 8
  br label %98

53:                                               ; preds = %24
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i8** %1, align 8
  br label %98

54:                                               ; preds = %24
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i64 0, i64 0), i8** %1, align 8
  br label %98

55:                                               ; preds = %24
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0), i8** %1, align 8
  br label %98

56:                                               ; preds = %24
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.30, i64 0, i64 0), i8** %1, align 8
  br label %98

57:                                               ; preds = %24
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0), i8** %1, align 8
  br label %98

58:                                               ; preds = %24
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.32, i64 0, i64 0), i8** %1, align 8
  br label %98

59:                                               ; preds = %24
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i8** %1, align 8
  br label %98

60:                                               ; preds = %24
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.34, i64 0, i64 0), i8** %1, align 8
  br label %98

61:                                               ; preds = %24
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i64 0, i64 0), i8** %1, align 8
  br label %98

62:                                               ; preds = %24
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i8** %1, align 8
  br label %98

63:                                               ; preds = %24
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i64 0, i64 0), i8** %1, align 8
  br label %98

64:                                               ; preds = %24
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i64 0, i64 0), i8** %1, align 8
  br label %98

65:                                               ; preds = %24
  store i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.39, i64 0, i64 0), i8** %1, align 8
  br label %98

66:                                               ; preds = %24
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.40, i64 0, i64 0), i8** %1, align 8
  br label %98

67:                                               ; preds = %24
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i8** %1, align 8
  br label %98

68:                                               ; preds = %24
  store i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.42, i64 0, i64 0), i8** %1, align 8
  br label %98

69:                                               ; preds = %24
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.43, i64 0, i64 0), i8** %1, align 8
  br label %98

70:                                               ; preds = %24
  store i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.44, i64 0, i64 0), i8** %1, align 8
  br label %98

71:                                               ; preds = %24
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0), i8** %1, align 8
  br label %98

72:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i64 0, i64 0), i8** %1, align 8
  br label %98

73:                                               ; preds = %24
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47, i64 0, i64 0), i8** %1, align 8
  br label %98

74:                                               ; preds = %24
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i8** %1, align 8
  br label %98

75:                                               ; preds = %24
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.49, i64 0, i64 0), i8** %1, align 8
  br label %98

76:                                               ; preds = %24
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i64 0, i64 0), i8** %1, align 8
  br label %98

77:                                               ; preds = %24
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.51, i64 0, i64 0), i8** %1, align 8
  br label %98

78:                                               ; preds = %24
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.52, i64 0, i64 0), i8** %1, align 8
  br label %98

79:                                               ; preds = %24
  store i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.53, i64 0, i64 0), i8** %1, align 8
  br label %98

80:                                               ; preds = %24
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.54, i64 0, i64 0), i8** %1, align 8
  br label %98

81:                                               ; preds = %24
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i64 0, i64 0), i8** %1, align 8
  br label %98

82:                                               ; preds = %24
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0), i8** %1, align 8
  br label %98

83:                                               ; preds = %24
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8** %1, align 8
  br label %98

84:                                               ; preds = %24
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i8** %1, align 8
  br label %98

85:                                               ; preds = %24
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0), i8** %1, align 8
  br label %98

86:                                               ; preds = %24
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0), i8** %1, align 8
  br label %98

87:                                               ; preds = %24
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i64 0, i64 0), i8** %1, align 8
  br label %98

88:                                               ; preds = %24
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i64 0, i64 0), i8** %1, align 8
  br label %98

89:                                               ; preds = %24
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i64 0, i64 0), i8** %1, align 8
  br label %98

90:                                               ; preds = %24
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.64, i64 0, i64 0), i8** %1, align 8
  br label %98

91:                                               ; preds = %24
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.65, i64 0, i64 0), i8** %1, align 8
  br label %98

92:                                               ; preds = %24
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.66, i64 0, i64 0), i8** %1, align 8
  br label %98

93:                                               ; preds = %24
  %94 = call i32 @pfInternetGetLastResponseInfoA(i32* @error_code, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WinInetErrorString.error_string, i64 0, i64 0), i32* %2)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WinInetErrorString.error_string, i64 0, i64 0), i8** %1, align 8
  br label %98

95:                                               ; preds = %24
  %96 = load i32, i32* @error_code, align 4
  %97 = call i32 @static_sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WinInetErrorString.error_string, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i64 0, i64 0), i32 %96)
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @WinInetErrorString.error_string, i64 0, i64 0), i8** %1, align 8
  br label %98

98:                                               ; preds = %95, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %22
  %99 = load i8*, i8** %1, align 8
  ret i8* %99
}

declare dso_local i32 @PF_TYPE_DECL(i32, i32, i32, i32) #1

declare dso_local i32 @PF_INIT(i32, i32) #1

declare dso_local i32 @HRESULT_CODE(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @WindowsErrorString(...) #1

declare dso_local i32 @pfInternetGetLastResponseInfoA(i32*, i8*, i32*) #1

declare dso_local i32 @static_sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
