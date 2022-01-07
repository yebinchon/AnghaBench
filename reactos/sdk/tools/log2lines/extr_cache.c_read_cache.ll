; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_cache.c_read_cache.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_cache.c_read_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@LINESIZE = common dso_local global i32 0, align 4
@cache_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Open %s failed\0A\00", align 1
@cache = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"** Create entry failed of: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_cache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @LINESIZE, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @LINESIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** @cache_name, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %0
  %21 = load i8*, i8** @cache_name, align 8
  %22 = call i32 @l2l_dbg(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store i32 2, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %43

23:                                               ; preds = %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cache, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cache, i32 0, i32 1), align 8
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* @LINESIZE, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = call i32* @fgets(i8* %12, i32 %25, i32* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = call i32* @cache_entry_create(i8* %12)
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 @l2l_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @entry_insert(%struct.TYPE_3__* @cache, i32* %36)
  br label %38

38:                                               ; preds = %35, %33
  br label %24

39:                                               ; preds = %24
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %20
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @l2l_dbg(i32, i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32* @cache_entry_create(i8*) #2

declare dso_local i32 @entry_insert(%struct.TYPE_3__*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
