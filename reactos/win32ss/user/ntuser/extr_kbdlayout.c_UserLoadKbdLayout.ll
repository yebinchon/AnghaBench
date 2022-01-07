; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_kbdlayout.c_UserLoadKbdLayout.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_kbdlayout.c_UserLoadKbdLayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64* }

@gHandleTable = common dso_local global i32 0, align 4
@TYPE_KBDLAYOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to create object!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"UserLoadKbdFile(%wZ) failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"RtlUnicodeStringToInteger failed for '%wZ'\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Language Identifiers %wZ LCID 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Charset %u Font Sig %lu CodePage %u\0A\00", align 1
@ANSI_CHARSET = common dso_local global i32 0, align 4
@FS_LATIN1 = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i64 0, align 8
@gSystemFS = common dso_local global i64 0, align 8
@gSystemCPCharSet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32, i32)* @UserLoadKbdLayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @UserLoadKbdLayout(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @gHandleTable, align 4
  %10 = load i32, i32* @TYPE_KBDLAYOUT, align 4
  %11 = call %struct.TYPE_11__* @UserCreateObject(i32 %9, i32* null, i32* null, i32* null, i32 %10, i32 4)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %110

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @UserLoadKbdFile(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = call i32 @UserDereferenceObject(%struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TYPE_KBDLAYOUT, align 4
  %38 = call i32 @UserDeleteObject(i32 %36, i32 %37)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %110

39:                                               ; preds = %16
  %40 = load i32, i32* %4, align 4
  %41 = ptrtoint i32* %6 to i32
  %42 = call i32 @RtlUnicodeStringToInteger(i32 %40, i32 16, i32 %41)
  %43 = call i32 @NT_SUCCESS(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TYPE_KBDLAYOUT, align 4
  %53 = call i32 @UserDeleteObject(i32 %51, i32 %52)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %110

54:                                               ; preds = %39
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %55, i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @co_IntGetCharsetInfo(i32 %59, %struct.TYPE_12__* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %80, i64 %83, i64 %86)
  br label %98

88:                                               ; preds = %54
  %89 = load i32, i32* @ANSI_CHARSET, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* @FS_LATIN1, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i64, i64* @CP_ACP, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %88, %62
  %99 = load i64, i64* @gSystemFS, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* @gSystemCPCharSet, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* @gSystemFS, align 8
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %3, align 8
  br label %110

110:                                              ; preds = %108, %45, %30, %14
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %111
}

declare dso_local %struct.TYPE_11__* @UserCreateObject(i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @UserLoadKbdFile(i32) #1

declare dso_local i32 @UserDereferenceObject(%struct.TYPE_11__*) #1

declare dso_local i32 @UserDeleteObject(i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlUnicodeStringToInteger(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64, ...) #1

declare dso_local i64 @co_IntGetCharsetInfo(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
