; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_WinInetHttpInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_WinInetHttpInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINDSTATUS_SENDINGREQUEST = common dso_local global i32 0, align 4
@test_protocol = common dso_local global i64 0, align 8
@FTP_TEST = common dso_local global i64 0, align 8
@download_state = common dso_local global i64 0, align 8
@BEFORE_DOWNLOAD = common dso_local global i64 0, align 8
@BINDSTATUS_MIMETYPEAVAILABLE = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@HTTP_QUERY_STATUS_CODE = common dso_local global i32 0, align 4
@HTTP_QUERY_FLAG_NUMBER = common dso_local global i32 0, align 4
@BINDSTATUS_COOKIE_SENT = common dso_local global i32 0, align 4
@BINDSTATUS_PROXYDETECTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"progress %u: hres = %x, expected %x\0A\00", align 1
@BINDSTATUS_DECODING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"progress %u: status = %d\0A\00", align 1
@HTTP_STATUS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@INTERNET_OPTION_HANDLE_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"hres = %x\0A\00", align 1
@INTERNET_HANDLE_TYPE_FTP_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"status = %d\0A\00", align 1
@INTERNET_HANDLE_TYPE_HTTP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_WinInetHttpInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WinInetHttpInfo(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BINDSTATUS_SENDINGREQUEST, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %157

13:                                               ; preds = %2
  %14 = load i64, i64* @test_protocol, align 8
  %15 = load i64, i64* @FTP_TEST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i64, i64* @download_state, align 8
  %19 = load i64, i64* @BEFORE_DOWNLOAD, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BINDSTATUS_MIMETYPEAVAILABLE, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @E_FAIL, align 4
  store i32 %26, i32* %8, align 4
  br label %36

27:                                               ; preds = %21, %17, %13
  %28 = load i64, i64* @test_protocol, align 8
  %29 = load i64, i64* @FTP_TEST, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @S_FALSE, align 4
  store i32 %32, i32* %8, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @S_OK, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %25
  store i32 4, i32* %6, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @HTTP_QUERY_STATUS_CODE, align 4
  %39 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @IWinInetHttpInfo_QueryInfo(i32* %37, i32 %40, i32* %5, i32* %6, i32* null, i32* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @BINDSTATUS_COOKIE_SENT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @BINDSTATUS_PROXYDETECTING, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @S_FALSE, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br label %59

59:                                               ; preds = %57, %36
  %60 = phi i1 [ true, %36 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @S_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %103

69:                                               ; preds = %59
  %70 = load i64, i64* @download_state, align 8
  %71 = load i64, i64* @BEFORE_DOWNLOAD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @BINDSTATUS_MIMETYPEAVAILABLE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @BINDSTATUS_DECODING, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  br label %96

88:                                               ; preds = %77, %73, %69
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @HTTP_STATUS_OK, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, i32, ...) @ok(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %81
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %98, 4
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, i8*, i32, ...) @ok(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96, %59
  store i32 4, i32* %6, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* @INTERNET_OPTION_HANDLE_TYPE, align 4
  %106 = call i32 @IWinInetHttpInfo_QueryOption(i32* %104, i32 %105, i32* %5, i32* %6)
  store i32 %106, i32* %7, align 4
  %107 = load i64, i64* @test_protocol, align 8
  %108 = load i64, i64* @FTP_TEST, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %144

110:                                              ; preds = %103
  %111 = load i64, i64* @download_state, align 8
  %112 = load i64, i64* @BEFORE_DOWNLOAD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @BINDSTATUS_MIMETYPEAVAILABLE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @E_FAIL, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i32, i8*, i32, ...) @ok(i32 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %132

125:                                              ; preds = %114, %110
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (i32, i8*, i32, ...) @ok(i32 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %125, %118
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @INTERNET_HANDLE_TYPE_FTP_FILE, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i32, i8*, i32, ...) @ok(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %136, %132
  br label %157

144:                                              ; preds = %103
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @S_OK, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32, i8*, i32, ...) @ok(i32 %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @INTERNET_HANDLE_TYPE_HTTP_REQUEST, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %5, align 4
  %156 = call i32 (i32, i8*, i32, ...) @ok(i32 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %12, %144, %143
  ret void
}

declare dso_local i32 @IWinInetHttpInfo_QueryInfo(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IWinInetHttpInfo_QueryOption(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
