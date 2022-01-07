; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_md5step.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_md5step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @md5step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md5step(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %52

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_5__* @sqlite3_aggregate_context(i32* %14, i32 4)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %52

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = call i32 @MD5Init(%struct.TYPE_5__* %25)
  br label %27

27:                                               ; preds = %24, %19
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @sqlite3_value_text(i32* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @MD5Update(%struct.TYPE_5__* %43, i8* %44, i32 %46)
  br label %48

48:                                               ; preds = %42, %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %28

52:                                               ; preds = %12, %18, %28
  ret void
}

declare dso_local %struct.TYPE_5__* @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @MD5Init(%struct.TYPE_5__*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @MD5Update(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
