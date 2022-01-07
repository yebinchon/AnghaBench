; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_seaf_commit_from_data.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_commit-mgr.c_seaf_commit_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to load commit json: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seaf_commit_from_data(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @json_loadb(i8* %11, i32 %12, i32 0, %struct.TYPE_3__* %10)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @clean_utf8_data(i8* %26, i32 %28)
  br label %34

30:                                               ; preds = %16
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @clean_utf8_data(i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @json_loadb(i8* %35, i32 %36, i32 0, %struct.TYPE_3__* %10)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seaf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32* null, i32** %4, align 8
  br label %52

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i8*, i8** %5, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @commit_from_json_object(i8* %46, i32* %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @json_decref(i32* %49)
  %51 = load i32*, i32** %9, align 8
  store i32* %51, i32** %4, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32*, i32** %4, align 8
  ret i32* %53
}

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @clean_utf8_data(i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32* @commit_from_json_object(i8*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
