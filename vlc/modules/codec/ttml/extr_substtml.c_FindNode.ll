; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FindNode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_FindNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [7 x i8] c"xml:id\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@TT_NODE_TYPE_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.TYPE_5__*, i8*, i64, i8*)* @FindNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @FindNode(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @tt_node_NameCompare(i32 %14, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = call i8* @vlc_dictionary_value_for_key(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i8* @vlc_dictionary_value_for_key(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strcmp(i8* %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %5, align 8
  br label %81

41:                                               ; preds = %34, %31
  br label %44

42:                                               ; preds = %18
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %5, align 8
  br label %81

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %81

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %11, align 8
  br label %53

53:                                               ; preds = %76, %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TT_NODE_TYPE_TEXT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %76

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = bitcast %struct.TYPE_6__* %64 to %struct.TYPE_5__*
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = sub i64 %67, 1
  %69 = load i8*, i8** %9, align 8
  %70 = call %struct.TYPE_5__* @FindNode(%struct.TYPE_5__* %65, i8* %66, i64 %68, i8* %69)
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %6, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %5, align 8
  br label %81

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %62
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %11, align 8
  br label %53

80:                                               ; preds = %53
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %81

81:                                               ; preds = %80, %73, %48, %42, %39
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %82
}

declare dso_local i32 @tt_node_NameCompare(i32, i8*) #1

declare dso_local i8* @vlc_dictionary_value_for_key(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
