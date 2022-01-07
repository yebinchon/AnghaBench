; ModuleID = '/home/carl/AnghaBench/vlc/src/media_source/extr_media_source.c_services_discovery_item_added.c'
source_filename = "/home/carl/AnghaBench/vlc/src/media_source/extr_media_source.c_services_discovery_item_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"adding: %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not allocate media tree node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i8*)* @services_discovery_item_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @services_discovery_item_added(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = icmp ne %struct.TYPE_21__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i1 [ true, %4 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @VLC_UNUSED(i8* %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %9, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %10, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %41 ]
  %44 = call i32 @msg_Dbg(%struct.TYPE_20__* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %46 = call i32 @vlc_media_tree_Lock(%struct.TYPE_18__* %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = icmp ne %struct.TYPE_21__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = call i32 @vlc_media_tree_Find(%struct.TYPE_18__* %50, %struct.TYPE_21__* %51, i32** %11, i32* null)
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32* %55, i32** %11, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = call i32* @vlc_media_tree_Add(%struct.TYPE_18__* %57, i32* %58, %struct.TYPE_21__* %59)
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = call i32 @msg_Err(%struct.TYPE_20__* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %56
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %74 = call i32 @vlc_media_tree_Unlock(%struct.TYPE_18__* %73)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @vlc_media_tree_Lock(%struct.TYPE_18__*) #1

declare dso_local i32 @vlc_media_tree_Find(%struct.TYPE_18__*, %struct.TYPE_21__*, i32**, i32*) #1

declare dso_local i32* @vlc_media_tree_Add(%struct.TYPE_18__*, i32*, %struct.TYPE_21__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @vlc_media_tree_Unlock(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
