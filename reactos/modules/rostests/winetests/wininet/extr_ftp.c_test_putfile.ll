; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_putfile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_ftp.c_test_putfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"non_existing_remote\00", align 1
@FTP_TRANSFER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Expected FtpPutFileA to fail\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"Expected ERROR_INVALID_HANDLE (win98) or ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"non_existing_local\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Expected ERROR_INVALID_HANDLE, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [74 x i8] c"Expected ERROR_FILE_NOT_FOUND or ERROR_INVALID_PARAMETER (win98), got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"now_existing_local\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Error creating a local file : %d\0A\00", align 1
@ERROR_INTERNET_EXTENDED_ERROR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [48 x i8] c"Expected ERROR_INTERNET_EXTENDED_ERROR, got %d\0A\00", align 1
@ERROR_INTERNET_INCORRECT_HANDLE_TYPE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [90 x i8] c"Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE (win98) or ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_putfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_putfile(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 @SetLastError(i32 -559038737)
  %8 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %9 = call i64 @FtpPutFileA(i32* null, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8, i32 0)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @FALSE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i64 (...) @GetLastError()
  %20 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i1 [ true, %2 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = call i32 @SetLastError(i32 -559038737)
  %28 = call i64 @FtpPutFileA(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 5, i32 0)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @FALSE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  %40 = call i32 @DeleteFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @SetLastError(i32 -559038737)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %44 = call i64 @FtpPutFileA(i32* %42, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %43, i32 0)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @FALSE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i64 (...) @GetLastError()
  %51 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %54)
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %59 = call i64 @FtpPutFileA(i32* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 %58, i32 0)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @FALSE, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i64 (...) @GetLastError()
  %66 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = call i32 @SetLastError(i32 -559038737)
  %72 = load i32*, i32** %3, align 8
  %73 = call i64 @FtpPutFileA(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 5, i32 0)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @FALSE, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %79 = call i64 (...) @GetLastError()
  %80 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %22
  %83 = call i64 (...) @GetLastError()
  %84 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %82, %22
  %87 = phi i1 [ true, %22 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = call i64 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i64 %89)
  %91 = call i32 @SetLastError(i32 -559038737)
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %94 = call i64 @FtpPutFileA(i32* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %93, i32 0)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @FALSE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %100 = call i64 (...) @GetLastError()
  %101 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 (...) @GetLastError()
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %104)
  %106 = call i32 @SetLastError(i32 -559038737)
  %107 = load i32, i32* @GENERIC_WRITE, align 4
  %108 = load i32, i32* @CREATE_ALWAYS, align 4
  %109 = call i32* @CreateFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %107, i32 0, i32* null, i32 %108, i32 0, i32* null)
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = icmp ne i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i64 (...) @GetLastError()
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @CloseHandle(i32* %115)
  %117 = call i32 @SetLastError(i32 -559038737)
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %120 = call i64 @FtpPutFileA(i32* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %119, i32 0)
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @FALSE, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %126 = call i64 (...) @GetLastError()
  %127 = load i64, i64* @ERROR_INTERNET_EXTENDED_ERROR, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 (...) @GetLastError()
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i64 %130)
  %132 = call i32 @DeleteFileA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %133 = call i32 @SetLastError(i32 -559038737)
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %136 = call i64 @FtpPutFileA(i32* %134, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %135, i32 0)
  store i64 %136, i64* %5, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* @FALSE, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %142 = call i64 (...) @GetLastError()
  %143 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %86
  %146 = call i64 (...) @GetLastError()
  %147 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %148 = icmp eq i64 %146, %147
  br label %149

149:                                              ; preds = %145, %86
  %150 = phi i1 [ true, %86 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = call i64 (...) @GetLastError()
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.11, i64 0, i64 0), i64 %152)
  %154 = call i32 @SetLastError(i32 -559038737)
  %155 = load i32*, i32** %4, align 8
  %156 = call i64 @FtpPutFileA(i32* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 5, i32 0)
  store i64 %156, i64* %5, align 8
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* @FALSE, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %162 = call i64 (...) @GetLastError()
  %163 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i64 (...) @GetLastError()
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i64 %166)
  %168 = call i32 @SetLastError(i32 -559038737)
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* @FTP_TRANSFER_TYPE_UNKNOWN, align 4
  %171 = call i64 @FtpPutFileA(i32* %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %170, i32 0)
  store i64 %171, i64* %5, align 8
  %172 = load i64, i64* %5, align 8
  %173 = load i64, i64* @FALSE, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %177 = call i64 (...) @GetLastError()
  %178 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i64 (...) @GetLastError()
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i64 %181)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @FtpPutFileA(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32* @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
