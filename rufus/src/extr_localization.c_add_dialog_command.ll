; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_localization.c_add_dialog_command.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_localization.c_add_dialog_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, i32** }

@loc_dlg = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"localization: invalid parameter for add_dialog_command\0A\00", align 1
@htab_loc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_dialog_command(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = icmp eq %struct.TYPE_10__* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @loc_dlg, align 8
  %23 = call i32 @ARRAYSIZE(%struct.TYPE_11__* %22)
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %17, %10, %2
  %26 = call i32 @uprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %80

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 48
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  store i8 %30, i8* %31, align 16
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 48
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 1
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @safe_strcpy(i8* %38, i32 126, i32* %43)
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %46 = call i64 @htab_hash(i8* %45, %struct.TYPE_12__* @htab_loc)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %27
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @htab_loc, i32 0, i32 0), align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = call i32 @list_del(i32* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = call i32 @free_loc_cmd(%struct.TYPE_10__* %62)
  br label %64

64:                                               ; preds = %58, %49
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = bitcast %struct.TYPE_10__* %65 to i8*
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @htab_loc, i32 0, i32 0), align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %27
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @loc_dlg, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = call i32 @list_add(i32* %73, i32* %78)
  br label %80

80:                                               ; preds = %71, %25
  ret void
}

declare dso_local i32 @ARRAYSIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32 @safe_strcpy(i8*, i32, i32*) #1

declare dso_local i64 @htab_hash(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_loc_cmd(%struct.TYPE_10__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
