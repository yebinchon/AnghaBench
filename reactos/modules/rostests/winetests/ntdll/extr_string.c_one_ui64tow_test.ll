; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_one_ui64tow_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_one_ui64tow_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i8* }

@LARGE_STRI_BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"(test %d): _ui64tow(0x%s, [out], %d) has result %p, expected: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"(test %d): _ui64tow(0x%s, [out], %d) assigns string \22%s\22, expected: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @one_ui64tow_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_ui64tow_test(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %36, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %16, i64 %34
  store i8 %32, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %16, i64 %41
  store i8 0, i8* %42, align 1
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %51, %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %20, i64 %49
  store i8 45, i8* %50, align 1
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %43

54:                                               ; preds = %43
  %55 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %20, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 1
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i8* %20, i8** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @p_ui64tow(i32 %72, i8* %20, i32 %75)
  store i8* %76, i8** %11, align 8
  %77 = call i32 @pRtlUnicodeStringToAnsiString(%struct.TYPE_10__* %10, %struct.TYPE_9__* %9, i32 1)
  %78 = load i8*, i8** %11, align 8
  %79 = icmp eq i8* %78, %20
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wine_dbgstr_longlong(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %85, i32 %88, i8* %89, i8* %20)
  %91 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = call i64 @memcmp(i8* %20, i8* %16, i32 %94)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @wine_dbgstr_longlong(i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %102, i32 %105, i8* %107, i8* %110)
  %112 = call i32 @pRtlFreeAnsiString(%struct.TYPE_10__* %10)
  %113 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @p_ui64tow(i32, i8*, i32) #2

declare dso_local i32 @pRtlUnicodeStringToAnsiString(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_longlong(i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @pRtlFreeAnsiString(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
