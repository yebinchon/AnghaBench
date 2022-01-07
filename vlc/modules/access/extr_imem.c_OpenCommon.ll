; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_OpenCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_OpenCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i64, i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"imem-get\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"imem-release\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid get/release function pointers\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"imem-data\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"imem-cookie\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Using get(%p), release(%p), data(%p), cookie(%s)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__**, i8*)* @OpenCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenCommon(i32* %0, %struct.TYPE_6__** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_6__* @vlc_obj_calloc(i32* %10, i32 1, i32 48)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %15, i32* %4, align 4
  br label %123

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @var_InheritString(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strtoll(i8* %22, i32* null, i32 0)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @var_InheritString(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strtoll(i8* %35, i32* null, i32 0)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48, %40
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @msg_Err(i32* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %4, align 4
  br label %123

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = call i8* @var_InheritString(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strtoull(i8* %64, i32* null, i32 0)
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32*, i32** %5, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @ParseMRL(i32* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32*, i32** %5, align 8
  %82 = call i8* @var_InheritString(i32* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %80
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  br label %112

111:                                              ; preds = %80
  br label %112

112:                                              ; preds = %111, %106
  %113 = phi i8* [ %110, %106 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %111 ]
  %114 = call i32 @msg_Dbg(i32* %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %91, i8* %96, i8* %100, i8* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @VLC_TICK_INVALID, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %121, align 8
  %122 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %112, %54, %14
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_6__* @vlc_obj_calloc(i32*, i32, i32) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @ParseMRL(i32*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
