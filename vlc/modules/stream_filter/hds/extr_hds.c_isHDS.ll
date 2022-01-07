; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_isHDS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_isHDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\FE\FF\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<manifest\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @isHDS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isHDS(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @vlc_stream_Peek(i32 %10, i32** %4, i32 200)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 200
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @memcmp(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @FromCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32 %21)
  store i8* %22, i8** %6, align 8
  br label %37

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @memcmp(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @FromCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %28, i32 %29)
  store i8* %30, i8** %6, align 8
  br label %36

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @strndup(i8* %33, i32 %34)
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %31, %27
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i32* @strstr(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %40, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i8* @FromCharset(i8*, i32*, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
