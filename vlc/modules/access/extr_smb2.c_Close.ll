; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_smb2.c_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.access_sys* }
%struct.access_sys = type { i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.access_sys*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.access_sys*, %struct.access_sys** %8, align 8
  store %struct.access_sys* %9, %struct.access_sys** %4, align 8
  %10 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %11 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = call i32 @vlc_smb2_close_fh(%struct.TYPE_4__* %15)
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %19 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %24 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %27 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @smb2_closedir(i32 %25, i32* %28)
  br label %46

30:                                               ; preds = %17
  %31 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %32 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %37 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %40 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @smb2_free_data(i32 %38, i32* %41)
  br label %45

43:                                               ; preds = %30
  %44 = call i32 (...) @vlc_assert_unreachable()
  br label %45

45:                                               ; preds = %43, %35
  br label %46

46:                                               ; preds = %45, %22
  br label %47

47:                                               ; preds = %46, %14
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = call i32 @vlc_smb2_disconnect_share(%struct.TYPE_4__* %48)
  %50 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %51 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @smb2_destroy_context(i32 %52)
  %54 = load %struct.access_sys*, %struct.access_sys** %4, align 8
  %55 = getelementptr inbounds %struct.access_sys, %struct.access_sys* %54, i32 0, i32 0
  %56 = call i32 @vlc_UrlClean(i32* %55)
  ret void
}

declare dso_local i32 @vlc_smb2_close_fh(%struct.TYPE_4__*) #1

declare dso_local i32 @smb2_closedir(i32, i32*) #1

declare dso_local i32 @smb2_free_data(i32, i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @vlc_smb2_disconnect_share(%struct.TYPE_4__*) #1

declare dso_local i32 @smb2_destroy_context(i32) #1

declare dso_local i32 @vlc_UrlClean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
