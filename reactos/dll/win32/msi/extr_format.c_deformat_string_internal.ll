; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_deformat_string_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_deformat_string_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, i32, i32, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FORMAT_NULL = common dso_local global i32 0, align 4
@FORMAT_LBRACK = common dso_local global i32 0, align 4
@FORMAT_LBRACE = common dso_local global i32 0, align 4
@FORMAT_LITERAL = common dso_local global i32 0, align 4
@FORMAT_NUMBER = common dso_local global i32 0, align 4
@FORMAT_ESCAPE = common dso_local global i32 0, align 4
@FORMAT_PROPNULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FORMAT_RBRACK = common dso_local global i32 0, align 4
@FORMAT_RBRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32**, i64*, i32*)* @deformat_string_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @deformat_string_internal(i32* %0, i32 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32**, i32*** %9, align 8
  store i32* null, i32** %21, align 8
  %22 = load i64*, i64** %10, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %23, i64* %6, align 8
  br label %173

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @strdupW(i32 %25)
  %27 = load i32**, i32*** %9, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @lstrlenW(i32 %28)
  %30 = load i64*, i64** %10, align 8
  store i64 %29, i64* %30, align 8
  %31 = call i32 @ZeroMemory(%struct.TYPE_11__* %12, i32 48)
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 6
  store i32* %32, i32** %33, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 5
  store i32* %34, i32** %35, align 8
  %36 = load i32**, i32*** %9, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32* %37, i32** %38, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32**, i32*** %9, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @verify_format(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %24
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %47, i64* %6, align 8
  br label %173

48:                                               ; preds = %24
  %49 = call i32* (...) @create_stack()
  store i32* %49, i32** %14, align 8
  %50 = call i32* (...) @create_stack()
  store i32* %50, i32** %15, align 8
  br label %51

51:                                               ; preds = %158, %48
  %52 = call i32 @format_lex(%struct.TYPE_11__* %12, %struct.TYPE_10__** %13)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* @FORMAT_NULL, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %159

55:                                               ; preds = %51
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @FORMAT_LBRACK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @FORMAT_LBRACE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @FORMAT_LITERAL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @FORMAT_NUMBER, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @FORMAT_ESCAPE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @FORMAT_PROPNULL, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %75, %71, %67, %63, %59, %55
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* @FORMAT_LBRACE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @FALSE, align 4
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %109

89:                                               ; preds = %79
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @FORMAT_ESCAPE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* @FORMAT_LBRACK, align 4
  %96 = call i64 @stack_find(i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %93, %89
  br label %109

109:                                              ; preds = %108, %83
  %110 = load i32*, i32** %14, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %112 = call i32 @stack_push(i32* %110, %struct.TYPE_10__* %111)
  br label %158

113:                                              ; preds = %75
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @FORMAT_RBRACK, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @FORMAT_RBRACE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @FORMAT_RBRACE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %125, %121
  %130 = load i32*, i32** %14, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %132 = call i32 @stack_push(i32* %130, %struct.TYPE_10__* %131)
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @left_type(i32 %134)
  %136 = call i64 @stack_find(i32* %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %145, %138
  %140 = load i32*, i32** %14, align 8
  %141 = call %struct.TYPE_10__* @stack_pop(i32* %140)
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %16, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %144 = call i32 @stack_push(i32* %142, %struct.TYPE_10__* %143)
  br label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @left_type(i32 %149)
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %139, label %152

152:                                              ; preds = %145
  %153 = load i32*, i32** %14, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @replace_stack(%struct.TYPE_11__* %12, i32* %153, i32* %154)
  br label %156

156:                                              ; preds = %152, %129
  br label %157

157:                                              ; preds = %156, %117
  br label %158

158:                                              ; preds = %157, %109
  br label %51

159:                                              ; preds = %51
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32**, i32*** %9, align 8
  store i32* %161, i32** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %10, align 8
  store i64 %164, i64* %165, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %167 = call i32 @msi_free(%struct.TYPE_10__* %166)
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @free_stack(i32* %168)
  %170 = load i32*, i32** %15, align 8
  %171 = call i32 @free_stack(i32* %170)
  %172 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %172, i64* %6, align 8
  br label %173

173:                                              ; preds = %159, %46, %20
  %174 = load i64, i64* %6, align 8
  ret i64 %174
}

declare dso_local i32* @strdupW(i32) #1

declare dso_local i64 @lstrlenW(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @verify_format(i32*) #1

declare dso_local i32* @create_stack(...) #1

declare dso_local i32 @format_lex(%struct.TYPE_11__*, %struct.TYPE_10__**) #1

declare dso_local i64 @stack_find(i32*, i32) #1

declare dso_local i32 @stack_push(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @left_type(i32) #1

declare dso_local %struct.TYPE_10__* @stack_pop(i32*) #1

declare dso_local i32 @replace_stack(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @msi_free(%struct.TYPE_10__*) #1

declare dso_local i32 @free_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
