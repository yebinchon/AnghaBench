; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_replace_stack_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_replace_stack_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i8*, i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@FORMAT_ESCAPE = common dso_local global i32 0, align 4
@FORMAT_LITERAL = common dso_local global i32 0, align 4
@FORMAT_NUMBER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32*, i8**, i8**, i32*, i32*, i32*)* @replace_stack_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replace_stack_prop(%struct.TYPE_15__* %0, i32* %1, i8** %2, i8** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load i8**, i8*** %10, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** @FALSE, align 8
  %22 = load i8**, i8*** %11, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.TYPE_14__* @stack_pop(i32* %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %17, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %18, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call %struct.TYPE_16__* @stack_peek(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %38 = call i32 @msi_free(%struct.TYPE_14__* %37)
  br label %39

39:                                               ; preds = %68, %7
  %40 = load i32*, i32** %9, align 8
  %41 = call %struct.TYPE_14__* @stack_pop(i32* %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %17, align 8
  %42 = icmp ne %struct.TYPE_14__* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FORMAT_ESCAPE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %43
  %55 = load i32*, i32** %9, align 8
  %56 = call %struct.TYPE_16__* @stack_peek(i32* %55)
  %57 = icmp ne %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @FORMAT_LITERAL, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %58, %54, %43
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %70 = call i32 @msi_free(%struct.TYPE_14__* %69)
  br label %39

71:                                               ; preds = %39
  %72 = call %struct.TYPE_14__* @msi_alloc_zero(i32 12)
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %16, align 8
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 2
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FORMAT_NUMBER, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %124

90:                                               ; preds = %71
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %90
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32* @deformat_index(%struct.TYPE_15__* %96, %struct.TYPE_14__* %97, i32* %98)
  store i32* %99, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i8*, i8** @TRUE, align 8
  %104 = load i8**, i8*** %10, align 8
  store i8* %103, i8** %104, align 8
  br label %109

105:                                              ; preds = %95
  %106 = load i8*, i8** @TRUE, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32*, i32** %15, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i32*, i32** %15, align 8
  %114 = call i64 @format_str_is_number(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @FORMAT_NUMBER, align 4
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @FORMAT_LITERAL, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load i32*, i32** %13, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %109
  br label %152

124:                                              ; preds = %90, %71
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %132 = load i8**, i8*** %10, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = call i32* @deformat_literal(%struct.TYPE_15__* %130, %struct.TYPE_14__* %131, i8** %132, i32* %133, i32* %134)
  store i32* %135, i32** %15, align 8
  br label %151

136:                                              ; preds = %124
  %137 = load i8*, i8** @TRUE, align 8
  %138 = load i8**, i8*** %11, align 8
  store i8* %137, i8** %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %144, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = call i32* @dup_formstr(%struct.TYPE_15__* %147, %struct.TYPE_14__* %148, i32* %149)
  store i32* %150, i32** %15, align 8
  br label %151

151:                                              ; preds = %136, %129
  br label %152

152:                                              ; preds = %151, %123
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %154 = call i32 @msi_free(%struct.TYPE_14__* %153)
  %155 = load i32*, i32** %15, align 8
  ret i32* %155
}

declare dso_local %struct.TYPE_14__* @stack_pop(i32*) #1

declare dso_local %struct.TYPE_16__* @stack_peek(i32*) #1

declare dso_local i32 @msi_free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @msi_alloc_zero(i32) #1

declare dso_local i32* @deformat_index(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @format_str_is_number(i32*) #1

declare dso_local i32* @deformat_literal(%struct.TYPE_15__*, %struct.TYPE_14__*, i8**, i32*, i32*) #1

declare dso_local i32* @dup_formstr(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
