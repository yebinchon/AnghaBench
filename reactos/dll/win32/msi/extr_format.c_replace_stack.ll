; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_replace_stack.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_replace_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i8*, i8* }

@FALSE = common dso_local global i8* null, align 8
@FORMAT_LBRACK = common dso_local global i32 0, align 4
@FORMAT_LBRACE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@FORMAT_LITERAL = common dso_local global i32 0, align 4
@FORMAT_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i32*)* @replace_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_stack(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** @FALSE, align 8
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_15__* @stack_peek(i32* %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %11, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @FORMAT_LBRACK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call %struct.TYPE_15__* @replace_stack_prop(%struct.TYPE_16__* %34, i32* %35, i8** %12, i8** %13, i32* %18, i32* %15, i32* %17)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %8, align 8
  br label %47

37:                                               ; preds = %3
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @FORMAT_LBRACE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call %struct.TYPE_15__* @replace_stack_group(%struct.TYPE_16__* %42, i32* %43, i8** %12, i8** %13, i32* %18, i32* %15, i32* %17)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %8, align 8
  %45 = load i8*, i8** @TRUE, align 8
  store i8* %45, i8** %14, align 8
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call %struct.TYPE_15__* @format_replace(%struct.TYPE_16__* %51, i8* %52, i8* %53, i32 %54, i32 %55, %struct.TYPE_15__* %56, i32 %57)
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %9, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = call i32 @msi_free(%struct.TYPE_15__* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = icmp ne %struct.TYPE_15__* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %47
  %64 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %64, i32* %4, align 4
  br label %139

65:                                               ; preds = %47
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %68, %71
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call %struct.TYPE_15__* @stack_peek(i32* %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %10, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = icmp ne %struct.TYPE_15__* %77, null
  br i1 %78, label %79, label %134

79:                                               ; preds = %65
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @FORMAT_LITERAL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @FORMAT_NUMBER, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %133

90:                                               ; preds = %86, %79
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %90
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load i8*, i8** @FALSE, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %106, %96
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @FORMAT_LITERAL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %114, %110
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = call i32 @msi_free(%struct.TYPE_15__* %130)
  %132 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %132, i32* %4, align 4
  br label %139

133:                                              ; preds = %90, %86
  br label %134

134:                                              ; preds = %133, %65
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %137 = call i32 @stack_push(i32* %135, %struct.TYPE_15__* %136)
  %138 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %129, %63
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_15__* @stack_peek(i32*) #1

declare dso_local %struct.TYPE_15__* @replace_stack_prop(%struct.TYPE_16__*, i32*, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @replace_stack_group(%struct.TYPE_16__*, i32*, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @format_replace(%struct.TYPE_16__*, i8*, i8*, i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_15__*) #1

declare dso_local i32 @stack_push(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
