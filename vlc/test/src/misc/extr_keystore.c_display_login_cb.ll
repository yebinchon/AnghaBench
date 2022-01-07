; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_keystore.c_display_login_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_keystore.c_display_login_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dialog_ctx = type { i32, %struct.testcase* }
%struct.testcase = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i8*, i8*, i32)* @display_login_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_login_cb(i8* %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dialog_ctx*, align 8
  %14 = alloca %struct.testcase*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.dialog_ctx*
  store %struct.dialog_ctx* %21, %struct.dialog_ctx** %13, align 8
  %22 = load %struct.dialog_ctx*, %struct.dialog_ctx** %13, align 8
  %23 = getelementptr inbounds %struct.dialog_ctx, %struct.dialog_ctx* %22, i32 0, i32 1
  %24 = load %struct.testcase*, %struct.testcase** %23, align 8
  store %struct.testcase* %24, %struct.testcase** %14, align 8
  %25 = load %struct.testcase*, %struct.testcase** %14, align 8
  %26 = getelementptr inbounds %struct.testcase, %struct.testcase* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load %struct.testcase*, %struct.testcase** %14, align 8
  %32 = getelementptr inbounds %struct.testcase, %struct.testcase* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %37

35:                                               ; preds = %6
  %36 = load i8*, i8** %11, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i8* [ %34, %30 ], [ %36, %35 ]
  store i8* %38, i8** %15, align 8
  %39 = load %struct.dialog_ctx*, %struct.dialog_ctx** %13, align 8
  %40 = getelementptr inbounds %struct.dialog_ctx, %struct.dialog_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load %struct.testcase*, %struct.testcase** %14, align 8
  %48 = getelementptr inbounds %struct.testcase, %struct.testcase* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load %struct.testcase*, %struct.testcase** %14, align 8
  %56 = getelementptr inbounds %struct.testcase, %struct.testcase* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.testcase*, %struct.testcase** %14, align 8
  %60 = getelementptr inbounds %struct.testcase, %struct.testcase* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @vlc_dialog_id_post_login(i32* %53, i8* %54, i32* %58, i32 %61)
  %63 = load %struct.dialog_ctx*, %struct.dialog_ctx** %13, align 8
  %64 = getelementptr inbounds %struct.dialog_ctx, %struct.dialog_ctx* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %68

65:                                               ; preds = %46, %43, %37
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @vlc_dialog_id_dismiss(i32* %66)
  br label %68

68:                                               ; preds = %65, %52
  ret void
}

declare dso_local i32 @vlc_dialog_id_post_login(i32*, i8*, i32*, i32) #1

declare dso_local i32 @vlc_dialog_id_dismiss(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
