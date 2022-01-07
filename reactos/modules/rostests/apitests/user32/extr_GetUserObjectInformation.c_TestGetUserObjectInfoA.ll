; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetUserObjectInformation.c_TestGetUserObjectInfoA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetUserObjectInformation.c_TestGetUserObjectInfoA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@UOI_FLAGS = common dso_local global i32 0, align 4
@ERROR_NOACCESS = common dso_local global i32 0, align 4
@NOTSET = common dso_local global i32 0, align 4
@UOI_TYPE = common dso_local global i32 0, align 4
@UOI_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to get desktop handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get winsta handle\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Desktop\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"WindowStation\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"WinSta0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TestGetUserObjectInfoA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TestGetUserObjectInfoA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 64, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32* @AllocateGuarded(i32 %6)
  store i32* %7, i32** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %10 = call i32 @TestUserObjectInfo(i32* null, i32 5, i32* null, i32 0, i32 %8, i32 %9, i32 0)
  %11 = load i32, i32* @UOI_FLAGS, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %14 = call i32 @TestUserObjectInfo(i32* null, i32 %11, i32* null, i32 0, i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* @UOI_FLAGS, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %18 = call i32 @TestUserObjectInfo(i32* null, i32 %15, i32* inttoptr (i64 1 to i32*), i32 0, i32 %16, i32 %17, i32 0)
  %19 = load i32, i32* @UOI_FLAGS, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @ERROR_NOACCESS, align 4
  %22 = load i32, i32* @NOTSET, align 4
  %23 = call i32 @TestUserObjectInfo(i32* null, i32 %19, i32* null, i32 1, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @UOI_FLAGS, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* @ERROR_NOACCESS, align 4
  %27 = load i32, i32* @NOTSET, align 4
  %28 = call i32 @TestUserObjectInfo(i32* null, i32 %24, i32* inttoptr (i64 1 to i32*), i32 1, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @UOI_FLAGS, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %32 = call i32 @TestUserObjectInfo(i32* null, i32 %29, i32* %1, i32 4, i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* @UOI_TYPE, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %36 = call i32 @TestUserObjectInfo(i32* null, i32 %33, i32* null, i32 0, i32 %34, i32 %35, i32 0)
  %37 = load i32, i32* @UOI_TYPE, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %40 = call i32 @TestUserObjectInfo(i32* null, i32 %37, i32* inttoptr (i64 1 to i32*), i32 0, i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* @UOI_TYPE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %44 = call i32 @TestUserObjectInfo(i32* null, i32 %41, i32* null, i32 1, i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* @UOI_TYPE, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %48 = call i32 @TestUserObjectInfo(i32* null, i32 %45, i32* inttoptr (i64 1 to i32*), i32 1, i32 %46, i32 %47, i32 0)
  %49 = load i32, i32* @UOI_TYPE, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %54 = call i32 @TestUserObjectInfo(i32* null, i32 %49, i32* %50, i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load i32, i32* @UOI_NAME, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %58 = call i32 @TestUserObjectInfo(i32* null, i32 %55, i32* null, i32 0, i32 %56, i32 %57, i32 0)
  %59 = load i32, i32* @UOI_NAME, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %62 = call i32 @TestUserObjectInfo(i32* null, i32 %59, i32* inttoptr (i64 1 to i32*), i32 0, i32 %60, i32 %61, i32 0)
  %63 = load i32, i32* @UOI_NAME, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %66 = call i32 @TestUserObjectInfo(i32* null, i32 %63, i32* null, i32 1, i32 %64, i32 %65, i32 0)
  %67 = load i32, i32* @UOI_NAME, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %70 = call i32 @TestUserObjectInfo(i32* null, i32 %67, i32* inttoptr (i64 1 to i32*), i32 1, i32 %68, i32 %69, i32 0)
  %71 = load i32, i32* @UOI_NAME, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %76 = call i32 @TestUserObjectInfo(i32* null, i32 %71, i32* %72, i32 %73, i32 %74, i32 %75, i32 0)
  %77 = call i32 (...) @GetCurrentThreadId()
  %78 = call i32* @GetThreadDesktop(i32 %77)
  store i32* %78, i32** %4, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %0
  %82 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @FreeGuarded(i32* %83)
  br label %163

85:                                               ; preds = %0
  %86 = call i32* (...) @GetProcessWindowStation()
  store i32* %86, i32** %5, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = call i32 @skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32*, i32** %2, align 8
  %92 = call i32 @FreeGuarded(i32* %91)
  br label %163

93:                                               ; preds = %85
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %97 = call i32 @TestUserObjectInfo(i32* %94, i32 5, i32* null, i32 0, i32 %95, i32 %96, i32 0)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* @UOI_FLAGS, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %102 = call i32 @TestUserObjectInfo(i32* %98, i32 %99, i32* null, i32 0, i32 %100, i32 %101, i32 4)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @UOI_FLAGS, align 4
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %107 = call i32 @TestUserObjectInfo(i32* %103, i32 %104, i32* inttoptr (i64 1 to i32*), i32 0, i32 %105, i32 %106, i32 4)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @UOI_FLAGS, align 4
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32, i32* @ERROR_NOACCESS, align 4
  %112 = load i32, i32* @NOTSET, align 4
  %113 = call i32 @TestUserObjectInfo(i32* %108, i32 %109, i32* null, i32 1, i32 %110, i32 %111, i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @UOI_FLAGS, align 4
  %116 = load i32, i32* @FALSE, align 4
  %117 = load i32, i32* @ERROR_NOACCESS, align 4
  %118 = load i32, i32* @NOTSET, align 4
  %119 = call i32 @TestUserObjectInfo(i32* %114, i32 %115, i32* inttoptr (i64 1 to i32*), i32 1, i32 %116, i32 %117, i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @UOI_FLAGS, align 4
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @TestUserObjectInfo(i32* %120, i32 %121, i32* %1, i32 4, i32 %122, i32 -559038737, i32 4)
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* @UOI_TYPE, align 4
  %126 = load i32*, i32** %2, align 8
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @TestUserObjectInfoWithString(i32* %124, i32 %125, i32* %126, i32 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @UOI_NAME, align 4
  %131 = load i32*, i32** %2, align 8
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @TestUserObjectInfoWithString(i32* %129, i32 %130, i32* %131, i32 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* @UOI_TYPE, align 4
  %136 = load i32*, i32** %2, align 8
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @TestUserObjectInfoWithString(i32* %134, i32 %135, i32* %136, i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @UOI_NAME, align 4
  %141 = load i32*, i32** %2, align 8
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @TestUserObjectInfoWithString(i32* %139, i32 %140, i32* %141, i32 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @FreeGuarded(i32* %144)
  store i32 8, i32* %3, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32* @AllocateGuarded(i32 %146)
  store i32* %147, i32** %2, align 8
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* @UOI_TYPE, align 4
  %150 = load i32*, i32** %2, align 8
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @TRUE, align 4
  %153 = call i32 @TestUserObjectInfo(i32* %148, i32 %149, i32* %150, i32 %151, i32 %152, i32 -559038737, i32 8)
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* @UOI_TYPE, align 4
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* @TRUE, align 4
  %160 = call i32 @TestUserObjectInfo(i32* %154, i32 %155, i32* %156, i32 %158, i32 %159, i32 -559038737, i32 8)
  %161 = load i32*, i32** %2, align 8
  %162 = call i32 @FreeGuarded(i32* %161)
  br label %163

163:                                              ; preds = %93, %89, %81
  ret void
}

declare dso_local i32* @AllocateGuarded(i32) #1

declare dso_local i32 @TestUserObjectInfo(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32* @GetThreadDesktop(i32) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @FreeGuarded(i32*) #1

declare dso_local i32* @GetProcessWindowStation(...) #1

declare dso_local i32 @TestUserObjectInfoWithString(i32*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
