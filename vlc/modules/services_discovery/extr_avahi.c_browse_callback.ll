; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_browse_callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_avahi.c_browse_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@AVAHI_BROWSER_NEW = common dso_local global i64 0, align 8
@AVAHI_PROTO_UNSPEC = common dso_local global i32 0, align 4
@resolve_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to resolve service '%s': %s\00", align 1
@AVAHI_BROWSER_REMOVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to find service '%s' in playlist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i64, i8*, i8*, i8*, i32*, i8*)* @browse_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @browse_callback(i32* %0, i32 %1, i32 %2, i64 %3, i8* %4, i8* %5, i8* %6, i32* %7, i8* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_2__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* %8, i8** %18, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @VLC_UNUSED(i32* %23)
  %25 = load i32*, i32** %17, align 8
  %26 = call i32 @VLC_UNUSED(i32* %25)
  %27 = load i8*, i8** %18, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %19, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @AVAHI_BROWSER_NEW, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %9
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i32, i32* @AVAHI_PROTO_UNSPEC, align 4
  %42 = load i32, i32* @resolve_callback, align 4
  %43 = load i8*, i8** %18, align 8
  %44 = call i32* @avahi_service_resolver_new(i32 %35, i32 %36, i32 %37, i8* %38, i8* %39, i8* %40, i32 %41, i32 0, i32 %42, i8* %43)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %32
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @avahi_client_errno(i32 %53)
  %55 = call i32 @avahi_strerror(i32 %54)
  %56 = call i32 (i64, i8*, i8*, ...) @msg_Err(i64 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %55)
  br label %57

57:                                               ; preds = %46, %32
  br label %110

58:                                               ; preds = %9
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @AVAHI_BROWSER_REMOVE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %109

62:                                               ; preds = %58
  %63 = load i8*, i8** %14, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %109

65:                                               ; preds = %62
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %14, align 8
  %69 = call i8* @vlc_dictionary_value_for_key(i32* %67, i8* %68)
  store i8* %69, i8** %20, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 (i64, i8*, i8*, ...) @msg_Err(i64 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %108

78:                                               ; preds = %65
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %21, align 8
  %88 = load i32*, i32** %21, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = call i32 @vlc_rd_remove_item(i32* %88, i8* %89)
  %91 = load i8*, i8** %20, align 8
  %92 = call i32 @vlc_renderer_item_release(i8* %91)
  br label %103

93:                                               ; preds = %78
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** %22, align 8
  %98 = load i32*, i32** %22, align 8
  %99 = load i8*, i8** %20, align 8
  %100 = call i32 @services_discovery_RemoveItem(i32* %98, i8* %99)
  %101 = load i8*, i8** %20, align 8
  %102 = call i32 @input_item_Release(i8* %101)
  br label %103

103:                                              ; preds = %93, %83
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @vlc_dictionary_remove_value_for_key(i32* %105, i8* %106, i32* null, i32* null)
  br label %108

108:                                              ; preds = %103, %72
  br label %109

109:                                              ; preds = %108, %62, %58
  br label %110

110:                                              ; preds = %109, %57
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32* @avahi_service_resolver_new(i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @msg_Err(i64, i8*, i8*, ...) #1

declare dso_local i32 @avahi_strerror(i32) #1

declare dso_local i32 @avahi_client_errno(i32) #1

declare dso_local i8* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @vlc_rd_remove_item(i32*, i8*) #1

declare dso_local i32 @vlc_renderer_item_release(i8*) #1

declare dso_local i32 @services_discovery_RemoveItem(i32*, i8*) #1

declare dso_local i32 @input_item_Release(i8*) #1

declare dso_local i32 @vlc_dictionary_remove_value_for_key(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
