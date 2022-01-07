; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_xcb_apps.c_UpdateApps.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_xcb_apps.c_UpdateApps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32* }
%struct.app = type opaque

@XA_WINDOW = common dso_local global i32 0, align 4
@cmpapp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @UpdateApps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateApps(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.app*, align 8
  %13 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XA_WINDOW, align 4
  %29 = call i32 @xcb_get_property(i32* %21, i32 0, i32 %24, i32 %27, i32 %28, i32 0, i32 1024)
  %30 = call i32* @xcb_get_property_reply(i32* %20, i32 %29, i32* null)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %101

34:                                               ; preds = %1
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @xcb_get_property_value(i32* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @xcb_get_property_value_length(i32* %37)
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %90, %34
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* %48, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @cmpapp, align 4
  %52 = call i8** @tfind(i32* %11, i8** %9, i32 %51)
  store i8** %52, i8*** %13, align 8
  %53 = load i8**, i8*** %13, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i8**, i8*** %13, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to %struct.app*
  store %struct.app* %58, %struct.app** %12, align 8
  %59 = load %struct.app*, %struct.app** %12, align 8
  %60 = bitcast %struct.app* %59 to i8*
  %61 = load i32, i32* @cmpapp, align 4
  %62 = call i32 @tdelete(i8* %60, i8** %9, i32 %61)
  br label %72

63:                                               ; preds = %47
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i8* @AddApp(%struct.TYPE_5__* %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.app*
  store %struct.app* %67, %struct.app** %12, align 8
  %68 = load %struct.app*, %struct.app** %12, align 8
  %69 = icmp eq %struct.app* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %90

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %55
  %73 = load %struct.app*, %struct.app** %12, align 8
  %74 = bitcast %struct.app* %73 to i8*
  %75 = load i32, i32* @cmpapp, align 4
  %76 = call i8** @tsearch(i8* %74, i8** %8, i32 %75)
  store i8** %76, i8*** %13, align 8
  %77 = load i8**, i8*** %13, align 8
  %78 = icmp eq i8** %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load i8**, i8*** %13, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.app*, %struct.app** %12, align 8
  %83 = bitcast %struct.app* %82 to i8*
  %84 = icmp ne i8* %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79, %72
  %86 = load %struct.app*, %struct.app** %12, align 8
  %87 = bitcast %struct.app* %86 to i8*
  %88 = call i32 @DelApp(i8* %87)
  br label %89

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %43

93:                                               ; preds = %43
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @free(i32* %94)
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @tdestroy(i8* %96, i32 (i8*)* @DelApp)
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %93, %33
  ret void
}

declare dso_local i32* @xcb_get_property_reply(i32*, i32, i32*) #1

declare dso_local i32 @xcb_get_property(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @xcb_get_property_value(i32*) #1

declare dso_local i32 @xcb_get_property_value_length(i32*) #1

declare dso_local i8** @tfind(i32*, i8**, i32) #1

declare dso_local i32 @tdelete(i8*, i8**, i32) #1

declare dso_local i8* @AddApp(%struct.TYPE_5__*, i32) #1

declare dso_local i8** @tsearch(i8*, i8**, i32) #1

declare dso_local i32 @DelApp(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @tdestroy(i8*, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
