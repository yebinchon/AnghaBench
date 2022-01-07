; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_format_lex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_format.c_format_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@FORMAT_NULL = common dso_local global i32 0, align 4
@FORMAT_FAIL = common dso_local global i32 0, align 4
@FORMAT_LBRACE = common dso_local global i32 0, align 4
@FORMAT_RBRACE = common dso_local global i32 0, align 4
@FORMAT_LBRACK = common dso_local global i32 0, align 4
@FORMAT_RBRACK = common dso_local global i32 0, align 4
@FORMAT_PROPNULL = common dso_local global i32 0, align 4
@FORMAT_ESCAPE = common dso_local global i32 0, align 4
@FORMAT_LITERAL = common dso_local global i32 0, align 4
@FORMAT_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Got unknown character %c(%x)\0A\00", align 1
@FORMAT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__**)* @format_lex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_lex(%struct.TYPE_9__* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @FORMAT_NULL, align 4
  store i32 %17, i32* %3, align 4
  br label %176

18:                                               ; preds = %2
  %19 = call %struct.TYPE_8__* @msi_alloc_zero(i32 16)
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @FORMAT_FAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %176

26:                                               ; preds = %18
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = call i8* @get_formstr_data(%struct.TYPE_9__* %36, %struct.TYPE_8__* %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %56 [
    i32 123, label %44
    i32 125, label %46
    i32 91, label %48
    i32 93, label %50
    i32 126, label %52
    i32 0, label %54
  ]

44:                                               ; preds = %26
  %45 = load i32, i32* @FORMAT_LBRACE, align 4
  store i32 %45, i32* %6, align 4
  br label %57

46:                                               ; preds = %26
  %47 = load i32, i32* @FORMAT_RBRACE, align 4
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %26
  %49 = load i32, i32* @FORMAT_LBRACK, align 4
  store i32 %49, i32* %6, align 4
  br label %57

50:                                               ; preds = %26
  %51 = load i32, i32* @FORMAT_RBRACK, align 4
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %26
  %53 = load i32, i32* @FORMAT_PROPNULL, align 4
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %26
  %55 = load i32, i32* @FORMAT_NULL, align 4
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %54, %52, %50, %48, %46, %44
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %176

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 92
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %91, %72
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 93
  br label %89

89:                                               ; preds = %81, %73
  %90 = phi i1 [ false, %73 ], [ %88, %81 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %73

94:                                               ; preds = %89
  %95 = load i32, i32* @FORMAT_ESCAPE, align 4
  store i32 %95, i32* %6, align 4
  br label %162

96:                                               ; preds = %69
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @format_is_alpha(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %109, %100
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @format_is_literal(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %101

112:                                              ; preds = %101
  %113 = load i32, i32* @FORMAT_LITERAL, align 4
  store i32 %113, i32* %6, align 4
  br label %161

114:                                              ; preds = %96
  %115 = load i32, i32* %10, align 4
  %116 = trunc i32 %115 to i8
  %117 = call i64 @format_is_number(i8 signext %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %155

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %128, %119
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @format_is_number(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %120

131:                                              ; preds = %120
  %132 = load i32, i32* @FORMAT_NUMBER, align 4
  store i32 %132, i32* %6, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 93
  br i1 %139, label %140, label %154

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %149, %140
  %142 = load i8*, i8** %9, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @format_is_literal(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %141

152:                                              ; preds = %141
  %153 = load i32, i32* @FORMAT_LITERAL, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %131
  br label %160

155:                                              ; preds = %114
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load i32, i32* @FORMAT_ERROR, align 4
  store i32 %159, i32* %3, align 4
  br label %176

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %112
  br label %162

162:                                              ; preds = %161, %94
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %162, %155, %60, %24, %16
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_8__* @msi_alloc_zero(i32) #1

declare dso_local i8* @get_formstr_data(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i64 @format_is_alpha(i32) #1

declare dso_local i64 @format_is_literal(i8 signext) #1

declare dso_local i64 @format_is_number(i8 signext) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
