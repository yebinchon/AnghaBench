; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_filter_chain.c_filter_chain_AppendFromString.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_filter_chain.c_filter_chain_AppendFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to append '%s' to chain\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_chain_AppendFromString(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %50, %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %55

23:                                               ; preds = %21
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @config_ChainCreate(i8** %9, i32** %8, i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i8*, i8** %10, align 8
  store i8* %29, i8** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @filter_chain_AppendFilter(%struct.TYPE_7__* %30, i8* %31, i32* %32, i32* null)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @config_ChainDestroy(i32* %37)
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32*, i32** %11, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @msg_Err(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @free(i8* %48)
  br label %59

50:                                               ; preds = %39
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %12

55:                                               ; preds = %21
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %76

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %63, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @filter_chain_DeleteFilter(%struct.TYPE_7__* %64, i32* %68)
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  br label %60

72:                                               ; preds = %60
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %55
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8* @config_ChainCreate(i8**, i32**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @filter_chain_AppendFilter(%struct.TYPE_7__*, i8*, i32*, i32*) #1

declare dso_local i32 @config_ChainDestroy(i32*) #1

declare dso_local i32 @msg_Err(i32, i8*, i8*) #1

declare dso_local i32 @filter_chain_DeleteFilter(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
