; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_registry_global_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_registry.c_registry_global_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_registry = type { i32 }
%struct.vlc_wl_registry = type { i32, i32 }
%struct.vlc_wl_interface = type opaque
%struct.vlc_wl_global = type opaque

@vwicmp = common dso_local global i32 0, align 4
@vwncmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_registry*, i32, i8*, i32)* @registry_global_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @registry_global_cb(i8* %0, %struct.wl_registry* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_registry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vlc_wl_registry*, align 8
  %12 = alloca %struct.vlc_wl_interface*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.vlc_wl_global*, align 8
  %15 = alloca i8**, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.vlc_wl_registry*
  store %struct.vlc_wl_registry* %17, %struct.vlc_wl_registry** %11, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @vlc_wl_interface_create(i8* %18)
  %20 = bitcast i8* %19 to %struct.vlc_wl_interface*
  store %struct.vlc_wl_interface* %20, %struct.vlc_wl_interface** %12, align 8
  %21 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %12, align 8
  %22 = bitcast %struct.vlc_wl_interface* %21 to i8*
  %23 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %11, align 8
  %24 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %23, i32 0, i32 1
  %25 = load i32, i32* @vwicmp, align 4
  %26 = call i8** @tsearch(i8* %22, i32* %24, i32 %25)
  store i8** %26, i8*** %13, align 8
  %27 = load i8**, i8*** %13, align 8
  %28 = icmp eq i8** %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %12, align 8
  %34 = bitcast %struct.vlc_wl_interface* %33 to i8*
  %35 = call i32 @vlc_wl_interface_destroy(i8* %34)
  br label %89

36:                                               ; preds = %5
  %37 = load i8**, i8*** %13, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %12, align 8
  %40 = bitcast %struct.vlc_wl_interface* %39 to i8*
  %41 = icmp ne i8* %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %12, align 8
  %44 = bitcast %struct.vlc_wl_interface* %43 to i8*
  %45 = call i32 @vlc_wl_interface_destroy(i8* %44)
  %46 = load i8**, i8*** %13, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.vlc_wl_interface*
  store %struct.vlc_wl_interface* %48, %struct.vlc_wl_interface** %12, align 8
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.vlc_wl_interface*, %struct.vlc_wl_interface** %12, align 8
  %51 = bitcast %struct.vlc_wl_interface* %50 to i8*
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i8* @vlc_wl_global_add(i8* %51, i32 %52, i32 %53)
  %55 = bitcast i8* %54 to %struct.vlc_wl_global*
  store %struct.vlc_wl_global* %55, %struct.vlc_wl_global** %14, align 8
  %56 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %14, align 8
  %57 = icmp eq %struct.vlc_wl_global* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %89

62:                                               ; preds = %49
  %63 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %14, align 8
  %64 = bitcast %struct.vlc_wl_global* %63 to i8*
  %65 = load %struct.vlc_wl_registry*, %struct.vlc_wl_registry** %11, align 8
  %66 = getelementptr inbounds %struct.vlc_wl_registry, %struct.vlc_wl_registry* %65, i32 0, i32 0
  %67 = load i32, i32* @vwncmp, align 4
  %68 = call i8** @tsearch(i8* %64, i32* %66, i32 %67)
  store i8** %68, i8*** %15, align 8
  %69 = load i8**, i8*** %15, align 8
  %70 = icmp eq i8** %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %62
  %75 = load i8**, i8*** %15, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %14, align 8
  %78 = bitcast %struct.vlc_wl_global* %77 to i8*
  %79 = icmp ne i8* %76, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74, %62
  %84 = load %struct.vlc_wl_global*, %struct.vlc_wl_global** %14, align 8
  %85 = bitcast %struct.vlc_wl_global* %84 to i8*
  %86 = call i32 @vlc_wl_global_remove(i8* %85)
  br label %87

87:                                               ; preds = %83, %74
  %88 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  br label %89

89:                                               ; preds = %87, %61, %32
  ret void
}

declare dso_local i8* @vlc_wl_interface_create(i8*) #1

declare dso_local i8** @tsearch(i8*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_wl_interface_destroy(i8*) #1

declare dso_local i8* @vlc_wl_global_add(i8*, i32, i32) #1

declare dso_local i32 @vlc_wl_global_remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
