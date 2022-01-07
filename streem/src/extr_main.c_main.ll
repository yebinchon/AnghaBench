; ModuleID = '/home/carl/AnghaBench/streem/src/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@strm_option_verbose = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: unknown option -%c\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Syntax OK\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Syntax NG\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %84, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br label %33

33:                                               ; preds = %25, %22
  %34 = phi i1 [ false, %22 ], [ %32, %25 ]
  br i1 %34, label %35, label %89

35:                                               ; preds = %33
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %13, align 8
  br label %40

40:                                               ; preds = %80, %35
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load i8*, i8** %13, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %74 [
    i32 118, label %48
    i32 119, label %51
    i32 99, label %53
    i32 101, label %56
  ]

48:                                               ; preds = %44
  %49 = load i8*, i8** @TRUE, align 8
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %44, %48
  %52 = load i8*, i8** @TRUE, align 8
  store i8* %52, i8** @strm_option_verbose, align 8
  br label %80

53:                                               ; preds = %44
  %54 = load i8*, i8** @TRUE, align 8
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* %11, align 4
  br label %80

56:                                               ; preds = %44
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %7, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %5, align 8
  br label %73

70:                                               ; preds = %56
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %70, %62
  br label %84

74:                                               ; preds = %44
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %76, i8 signext %78)
  br label %80

80:                                               ; preds = %74, %53, %51
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %13, align 8
  br label %40

83:                                               ; preds = %40
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %5, align 8
  br label %22

89:                                               ; preds = %33
  %90 = call i32 @node_parse_init(%struct.TYPE_8__* %12)
  %91 = load i8*, i8** %7, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = call i64 @node_parse_string(%struct.TYPE_8__* %12, i8* %94)
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %127

100:                                              ; preds = %89
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @stdin, align 4
  %105 = call i32 @node_parse_input(%struct.TYPE_8__* %12, i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %105, i32* %9, align 4
  br label %126

106:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %122, %106
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @node_parse_file(%struct.TYPE_8__* %12, i8* %116)
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %107

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126, %93
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %180

130:                                              ; preds = %127
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dump_node(i32 %135, i32 0)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %179

142:                                              ; preds = %137
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @strm_ary_new(i32* null, i32 %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32* @strm_ary_ptr(i32 %145)
  store i32* %146, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %169, %142
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load i8**, i8*** %5, align 8
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strlen(i8* %161)
  %163 = call i32 @strm_str_new(i8* %156, i32 %162)
  %164 = call i32 @strm_str_value(i32 %163)
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %151
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %147

172:                                              ; preds = %147
  %173 = load i32, i32* %14, align 4
  %174 = call i32 @strm_ary_value(i32 %173)
  %175 = call i32 @strm_var_def(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = call i32 @node_run(%struct.TYPE_8__* %12)
  %177 = call i32 (...) @strm_loop()
  %178 = call i32 (...) @node_stop()
  br label %179

179:                                              ; preds = %172, %140
  br label %186

180:                                              ; preds = %127
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %180
  br label %186

186:                                              ; preds = %185, %179
  %187 = call i32 @node_parse_free(%struct.TYPE_8__* %12)
  %188 = load i32, i32* %9, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* @EXIT_FAILURE, align 4
  br label %194

192:                                              ; preds = %186
  %193 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  ret i32 %195
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8 signext) #1

declare dso_local i32 @node_parse_init(%struct.TYPE_8__*) #1

declare dso_local i64 @node_parse_string(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @node_parse_input(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @node_parse_file(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @dump_node(i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @strm_ary_new(i32*, i32) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i32 @strm_str_value(i32) #1

declare dso_local i32 @strm_str_new(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_ary_value(i32) #1

declare dso_local i32 @node_run(%struct.TYPE_8__*) #1

declare dso_local i32 @strm_loop(...) #1

declare dso_local i32 @node_stop(...) #1

declare dso_local i32 @node_parse_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
