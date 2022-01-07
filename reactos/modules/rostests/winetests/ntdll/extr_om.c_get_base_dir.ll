; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_get_base_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_get_base_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@get_base_dir.objname = internal constant [22 x i8] c"om.c_get_base_dir_obj\00", align 16
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CreateMutexA failed got ret=%p (%d)\0A\00", align 1
@OBJ_OPENIF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\\BaseNamedObjects\\Session\\%u\00", align 1
@DIRECTORY_QUERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"\\BaseNamedObjects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_base_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_base_dir() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [40 x i8], align 16
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i64 @CreateMutexA(i32* null, i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @get_base_dir.objname, i64 0, i64 0))
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %5, align 8
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %13)
  %15 = load i32, i32* @OBJ_OPENIF, align 4
  %16 = call i32 @InitializeObjectAttributes(i32* %3, i32* %2, i32 %15, i32 0, i32* null)
  %17 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %18 = call %struct.TYPE_4__* (...) @NtCurrentTeb()
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %6, i64 0, i64 0
  %25 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %2, i8* %24)
  %26 = load i32, i32* @DIRECTORY_QUERY, align 4
  %27 = call i64 @pNtOpenDirectoryObject(i64* %4, i32 %26, i32* %3)
  store i64 %27, i64* %1, align 8
  %28 = call i32 @pRtlFreeUnicodeString(i32* %2)
  %29 = load i64, i64* %1, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %0
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @is_correct_dir(i64 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @get_base_dir.objname, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %61

36:                                               ; preds = %31, %0
  %37 = load i64, i64* %1, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @pNtClose(i64 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @DIRECTORY_QUERY, align 4
  %45 = call i64 @pNtOpenDirectoryObject(i64* %4, i32 %44, i32* %3)
  store i64 %45, i64* %1, align 8
  %46 = call i32 @pRtlFreeUnicodeString(i32* %2)
  %47 = load i64, i64* %1, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @is_correct_dir(i64 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @get_base_dir.objname, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %61

54:                                               ; preds = %49, %42
  %55 = load i64, i64* %1, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @pNtClose(i64 %58)
  br label %60

60:                                               ; preds = %57, %54
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %60, %53, %35
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @pNtClose(i64 %62)
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i64 @CreateMutexA(i32*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @NtCurrentTeb(...) #1

declare dso_local i32 @pRtlCreateUnicodeStringFromAsciiz(i32*, i8*) #1

declare dso_local i64 @pNtOpenDirectoryObject(i64*, i32, i32*) #1

declare dso_local i32 @pRtlFreeUnicodeString(i32*) #1

declare dso_local i64 @is_correct_dir(i64, i8*) #1

declare dso_local i32 @pNtClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
