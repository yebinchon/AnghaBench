; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_lex_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-lex.c_lex_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"name is too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_4__*)* @lex_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_name(i32* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fz_mini(i32 127, i32 %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %3, %159, %169
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %27 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = icmp slt i64 %33, 127
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = call i32 @pdf_lexbuf_grow(i32* %36, %struct.TYPE_4__* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fz_mini(i32 127, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  store i8* %50, i8** %8, align 8
  br label %65

51:                                               ; preds = %26
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fz_warn(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** %7, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %55 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  store i8* null, i8** %7, align 8
  br label %65

65:                                               ; preds = %51, %35
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call signext i8 @lex_byte(i32* %67, i32* %68)
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %160 [
    i32 131, label %72
    i32 132, label %72
    i32 133, label %76
    i32 35, label %77
  ]

72:                                               ; preds = %66, %66
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @fz_unread_byte(i32* %73, i32* %74)
  br label %170

76:                                               ; preds = %66
  br label %170

77:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %129, %77
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %81, label %132

81:                                               ; preds = %78
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @fz_peek_byte(i32* %82, i32* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %126 [
    i32 130, label %86
    i32 128, label %106
    i32 129, label %116
    i32 133, label %127
  ]

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 48
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %146

97:                                               ; preds = %92, %89, %86
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call signext i8 @lex_byte(i32* %98, i32* %99)
  %101 = sext i8 %100 to i32
  %102 = sub nsw i32 %101, 48
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  br label %128

106:                                              ; preds = %81
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = call signext i8 @lex_byte(i32* %107, i32* %108)
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 %110, 97
  %112 = add nsw i32 %111, 10
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  br label %128

116:                                              ; preds = %81
  %117 = load i32*, i32** %4, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call signext i8 @lex_byte(i32* %117, i32* %118)
  %120 = sext i8 %119 to i32
  %121 = sub nsw i32 %120, 65
  %122 = add nsw i32 %121, 10
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %124
  store i32 %122, i32* %125, align 4
  br label %128

126:                                              ; preds = %81
  br label %127

127:                                              ; preds = %81, %126
  br label %146

128:                                              ; preds = %116, %106, %97
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %78

132:                                              ; preds = %78
  %133 = load i8*, i8** %7, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %138, %140
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %7, align 8
  store i8 %142, i8* %143, align 1
  br label %145

145:                                              ; preds = %135, %132
  br label %169

146:                                              ; preds = %127, %96
  %147 = load i32, i32* %11, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32*, i32** %4, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @fz_unread_byte(i32* %150, i32* %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load i8*, i8** %7, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %7, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %7, align 8
  store i8 35, i8* %157, align 1
  br label %159

159:                                              ; preds = %156, %153
  br label %22

160:                                              ; preds = %66
  %161 = load i8*, i8** %7, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32, i32* %9, align 4
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %7, align 8
  store i8 %165, i8* %166, align 1
  br label %168

168:                                              ; preds = %163, %160
  br label %169

169:                                              ; preds = %168, %145
  br label %22

170:                                              ; preds = %76, %72
  %171 = load i8*, i8** %7, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load i8*, i8** %7, align 8
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %7, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %175 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %173, %170
  ret void
}

declare dso_local i32 @fz_mini(i32, i32) #1

declare dso_local i32 @pdf_lexbuf_grow(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local signext i8 @lex_byte(i32*, i32*) #1

declare dso_local i32 @fz_unread_byte(i32*, i32*) #1

declare dso_local i32 @fz_peek_byte(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
