; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_sd_markdown_new.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_sd_markdown_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd_markdown = type { i32, i64, i64, i8*, i8**, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sd_callbacks = type { i32 }

@BUFFER_BLOCK = common dso_local global i64 0, align 8
@BUFFER_SPAN = common dso_local global i64 0, align 8
@MD_CHAR_EMPHASIS = common dso_local global i8* null, align 8
@MKDEXT_STRIKETHROUGH = common dso_local global i32 0, align 4
@MKDEXT_HIGHLIGHT = common dso_local global i32 0, align 4
@MKDEXT_QUOTE = common dso_local global i32 0, align 4
@MD_CHAR_QUOTE = common dso_local global i8* null, align 8
@MD_CHAR_CODESPAN = common dso_local global i8* null, align 8
@MD_CHAR_LINEBREAK = common dso_local global i8* null, align 8
@MD_CHAR_LINK = common dso_local global i8* null, align 8
@MD_CHAR_LANGLE = common dso_local global i8* null, align 8
@MD_CHAR_ESCAPE = common dso_local global i8* null, align 8
@MD_CHAR_ENTITITY = common dso_local global i8* null, align 8
@MKDEXT_AUTOLINK = common dso_local global i32 0, align 4
@MD_CHAR_AUTOLINK_URL = common dso_local global i8* null, align 8
@MD_CHAR_AUTOLINK_EMAIL = common dso_local global i8* null, align 8
@MD_CHAR_AUTOLINK_WWW = common dso_local global i8* null, align 8
@MKDEXT_SUPERSCRIPT = common dso_local global i32 0, align 4
@MD_CHAR_SUPERSCRIPT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sd_markdown* @sd_markdown_new(i32 %0, i64 %1, %struct.sd_callbacks* %2, i8* %3) #0 {
  %5 = alloca %struct.sd_markdown*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sd_callbacks*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sd_markdown*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.sd_callbacks* %2, %struct.sd_callbacks** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sd_markdown* null, %struct.sd_markdown** %10, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.sd_callbacks*, %struct.sd_callbacks** %8, align 8
  %15 = icmp ne %struct.sd_callbacks* %14, null
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i1 [ false, %4 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call %struct.sd_markdown* @malloc(i32 104)
  store %struct.sd_markdown* %20, %struct.sd_markdown** %10, align 8
  %21 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %22 = icmp ne %struct.sd_markdown* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store %struct.sd_markdown* null, %struct.sd_markdown** %5, align 8
  br label %208

24:                                               ; preds = %16
  %25 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %26 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %25, i32 0, i32 5
  %27 = load %struct.sd_callbacks*, %struct.sd_callbacks** %8, align 8
  %28 = call i32 @memcpy(%struct.TYPE_2__* %26, %struct.sd_callbacks* %27, i32 4)
  %29 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %30 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @BUFFER_BLOCK, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @redcarpet_stack_init(i32* %33, i32 4)
  %35 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %36 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @BUFFER_SPAN, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @redcarpet_stack_init(i32* %39, i32 8)
  %41 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %42 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %41, i32 0, i32 4
  %43 = load i8**, i8*** %42, align 8
  %44 = call i32 @memset(i8** %43, i32 0, i32 256)
  %45 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %46 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %24
  %51 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %52 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %58 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %56, %50, %24
  %63 = load i8*, i8** @MD_CHAR_EMPHASIS, align 8
  %64 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %65 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %64, i32 0, i32 4
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 42
  store i8* %63, i8** %67, align 8
  %68 = load i8*, i8** @MD_CHAR_EMPHASIS, align 8
  %69 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %70 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 95
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @MKDEXT_STRIKETHROUGH, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load i8*, i8** @MD_CHAR_EMPHASIS, align 8
  %79 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %80 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %79, i32 0, i32 4
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 126
  store i8* %78, i8** %82, align 8
  br label %83

83:                                               ; preds = %77, %62
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @MKDEXT_HIGHLIGHT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i8*, i8** @MD_CHAR_EMPHASIS, align 8
  %90 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %91 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %90, i32 0, i32 4
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 61
  store i8* %89, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @MKDEXT_QUOTE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i8*, i8** @MD_CHAR_QUOTE, align 8
  %101 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %102 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %101, i32 0, i32 4
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 34
  store i8* %100, i8** %104, align 8
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105, %56
  %107 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %108 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i8*, i8** @MD_CHAR_CODESPAN, align 8
  %114 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %115 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %114, i32 0, i32 4
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 96
  store i8* %113, i8** %117, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %120 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i8*, i8** @MD_CHAR_LINEBREAK, align 8
  %126 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %127 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %126, i32 0, i32 4
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 10
  store i8* %125, i8** %129, align 8
  br label %130

130:                                              ; preds = %124, %118
  %131 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %132 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %138 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136, %130
  %143 = load i8*, i8** @MD_CHAR_LINK, align 8
  %144 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %145 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %144, i32 0, i32 4
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 91
  store i8* %143, i8** %147, align 8
  br label %148

148:                                              ; preds = %142, %136
  %149 = load i8*, i8** @MD_CHAR_LANGLE, align 8
  %150 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %151 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %150, i32 0, i32 4
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 60
  store i8* %149, i8** %153, align 8
  %154 = load i8*, i8** @MD_CHAR_ESCAPE, align 8
  %155 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %156 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %155, i32 0, i32 4
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 92
  store i8* %154, i8** %158, align 8
  %159 = load i8*, i8** @MD_CHAR_ENTITITY, align 8
  %160 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %161 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %160, i32 0, i32 4
  %162 = load i8**, i8*** %161, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 38
  store i8* %159, i8** %163, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @MKDEXT_AUTOLINK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %148
  %169 = load i8*, i8** @MD_CHAR_AUTOLINK_URL, align 8
  %170 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %171 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %170, i32 0, i32 4
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 58
  store i8* %169, i8** %173, align 8
  %174 = load i8*, i8** @MD_CHAR_AUTOLINK_EMAIL, align 8
  %175 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %176 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %175, i32 0, i32 4
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 64
  store i8* %174, i8** %178, align 8
  %179 = load i8*, i8** @MD_CHAR_AUTOLINK_WWW, align 8
  %180 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %181 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %180, i32 0, i32 4
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 119
  store i8* %179, i8** %183, align 8
  br label %184

184:                                              ; preds = %168, %148
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @MKDEXT_SUPERSCRIPT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i8*, i8** @MD_CHAR_SUPERSCRIPT, align 8
  %191 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %192 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %191, i32 0, i32 4
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 94
  store i8* %190, i8** %194, align 8
  br label %195

195:                                              ; preds = %189, %184
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %198 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %201 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  %202 = load i64, i64* %7, align 8
  %203 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %204 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  %205 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  %206 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %205, i32 0, i32 2
  store i64 0, i64* %206, align 8
  %207 = load %struct.sd_markdown*, %struct.sd_markdown** %10, align 8
  store %struct.sd_markdown* %207, %struct.sd_markdown** %5, align 8
  br label %208

208:                                              ; preds = %195, %23
  %209 = load %struct.sd_markdown*, %struct.sd_markdown** %5, align 8
  ret %struct.sd_markdown* %209
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.sd_markdown* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.sd_callbacks*, i32) #1

declare dso_local i32 @redcarpet_stack_init(i32*, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
