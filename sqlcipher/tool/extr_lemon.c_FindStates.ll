; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindStates.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_FindStates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, i32, %struct.rule*, %struct.TYPE_2__*, i64 }
%struct.rule = type { i32, i32, %struct.rule*, %struct.symbol**, %struct.rule* }
%struct.symbol = type { %struct.rule*, i32 }
%struct.TYPE_2__ = type { %struct.symbol* }
%struct.config = type { i32 }

@.str = private unnamed_addr constant [120 x i8] c"The specified start symbol \22%s\22 is not in a nonterminal of the grammar.  \22%s\22 will be used as the start symbol instead.\00", align 1
@.str.1 = private unnamed_addr constant [122 x i8] c"The start symbol \22%s\22 occurs on the right-hand side of a rule. This will result in a parser which does not work properly.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindStates(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.config*, align 8
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  %7 = call i32 (...) @Configlist_init()
  %8 = load %struct.lemon*, %struct.lemon** %2, align 8
  %9 = getelementptr inbounds %struct.lemon, %struct.lemon* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  %13 = load %struct.lemon*, %struct.lemon** %2, align 8
  %14 = getelementptr inbounds %struct.lemon, %struct.lemon* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.symbol* @Symbol_find(i64 %15)
  store %struct.symbol* %16, %struct.symbol** %3, align 8
  %17 = load %struct.symbol*, %struct.symbol** %3, align 8
  %18 = icmp eq %struct.symbol* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.lemon*, %struct.lemon** %2, align 8
  %21 = getelementptr inbounds %struct.lemon, %struct.lemon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lemon*, %struct.lemon** %2, align 8
  %24 = getelementptr inbounds %struct.lemon, %struct.lemon* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.lemon*, %struct.lemon** %2, align 8
  %28 = getelementptr inbounds %struct.lemon, %struct.lemon* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.symbol*, %struct.symbol** %30, align 8
  %32 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i32, i8*, i32, ...) @ErrorMsg(i32 %22, i32 0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %33)
  %35 = load %struct.lemon*, %struct.lemon** %2, align 8
  %36 = getelementptr inbounds %struct.lemon, %struct.lemon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.lemon*, %struct.lemon** %2, align 8
  %40 = getelementptr inbounds %struct.lemon, %struct.lemon* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.symbol*, %struct.symbol** %42, align 8
  store %struct.symbol* %43, %struct.symbol** %3, align 8
  br label %44

44:                                               ; preds = %19, %12
  br label %51

45:                                               ; preds = %1
  %46 = load %struct.lemon*, %struct.lemon** %2, align 8
  %47 = getelementptr inbounds %struct.lemon, %struct.lemon* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.symbol*, %struct.symbol** %49, align 8
  store %struct.symbol* %50, %struct.symbol** %3, align 8
  br label %51

51:                                               ; preds = %45, %44
  %52 = load %struct.lemon*, %struct.lemon** %2, align 8
  %53 = getelementptr inbounds %struct.lemon, %struct.lemon* %52, i32 0, i32 2
  %54 = load %struct.rule*, %struct.rule** %53, align 8
  store %struct.rule* %54, %struct.rule** %4, align 8
  br label %55

55:                                               ; preds = %92, %51
  %56 = load %struct.rule*, %struct.rule** %4, align 8
  %57 = icmp ne %struct.rule* %56, null
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %88, %58
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.rule*, %struct.rule** %4, align 8
  %62 = getelementptr inbounds %struct.rule, %struct.rule* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load %struct.rule*, %struct.rule** %4, align 8
  %67 = getelementptr inbounds %struct.rule, %struct.rule* %66, i32 0, i32 3
  %68 = load %struct.symbol**, %struct.symbol*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.symbol*, %struct.symbol** %68, i64 %70
  %72 = load %struct.symbol*, %struct.symbol** %71, align 8
  %73 = load %struct.symbol*, %struct.symbol** %3, align 8
  %74 = icmp eq %struct.symbol* %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %65
  %76 = load %struct.lemon*, %struct.lemon** %2, align 8
  %77 = getelementptr inbounds %struct.lemon, %struct.lemon* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.symbol*, %struct.symbol** %3, align 8
  %80 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i32, i8*, i32, ...) @ErrorMsg(i32 %78, i32 0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.lemon*, %struct.lemon** %2, align 8
  %84 = getelementptr inbounds %struct.lemon, %struct.lemon* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %75, %65
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %59

91:                                               ; preds = %59
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.rule*, %struct.rule** %4, align 8
  %94 = getelementptr inbounds %struct.rule, %struct.rule* %93, i32 0, i32 4
  %95 = load %struct.rule*, %struct.rule** %94, align 8
  store %struct.rule* %95, %struct.rule** %4, align 8
  br label %55

96:                                               ; preds = %55
  %97 = load %struct.symbol*, %struct.symbol** %3, align 8
  %98 = getelementptr inbounds %struct.symbol, %struct.symbol* %97, i32 0, i32 0
  %99 = load %struct.rule*, %struct.rule** %98, align 8
  store %struct.rule* %99, %struct.rule** %4, align 8
  br label %100

100:                                              ; preds = %112, %96
  %101 = load %struct.rule*, %struct.rule** %4, align 8
  %102 = icmp ne %struct.rule* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load %struct.rule*, %struct.rule** %4, align 8
  %105 = getelementptr inbounds %struct.rule, %struct.rule* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.rule*, %struct.rule** %4, align 8
  %107 = call %struct.config* @Configlist_addbasis(%struct.rule* %106, i32 0)
  store %struct.config* %107, %struct.config** %6, align 8
  %108 = load %struct.config*, %struct.config** %6, align 8
  %109 = getelementptr inbounds %struct.config, %struct.config* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @SetAdd(i32 %110, i32 0)
  br label %112

112:                                              ; preds = %103
  %113 = load %struct.rule*, %struct.rule** %4, align 8
  %114 = getelementptr inbounds %struct.rule, %struct.rule* %113, i32 0, i32 2
  %115 = load %struct.rule*, %struct.rule** %114, align 8
  store %struct.rule* %115, %struct.rule** %4, align 8
  br label %100

116:                                              ; preds = %100
  %117 = load %struct.lemon*, %struct.lemon** %2, align 8
  %118 = call i32 @getstate(%struct.lemon* %117)
  ret void
}

declare dso_local i32 @Configlist_init(...) #1

declare dso_local %struct.symbol* @Symbol_find(i64) #1

declare dso_local i32 @ErrorMsg(i32, i32, i8*, i32, ...) #1

declare dso_local %struct.config* @Configlist_addbasis(%struct.rule*, i32) #1

declare dso_local i32 @SetAdd(i32, i32) #1

declare dso_local i32 @getstate(%struct.lemon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
