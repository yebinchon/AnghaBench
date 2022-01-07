; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_replace_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_replace_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_replace_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_replace_string(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @checkstring(i32* %9, i32 0)
  store i8* %10, i8** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @js_tostring(i32* %11, i32 1)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strstr(i8* %13, i8* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @js_copy(i32* %19, i32 0)
  br label %167

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @js_iscallable(i32* %24, i32 2)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @js_copy(i32* %28, i32 2)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @js_pushundefined(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @js_pushlstring(i32* %32, i8* %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @js_pushnumber(i32* %36, i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @js_copy(i32* %44, i32 0)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @js_call(i32* %46, i32 3)
  %48 = load i32*, i32** %2, align 8
  %49 = call i8* @js_tostring(i32* %48, i32 -1)
  store i8* %49, i8** %6, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @js_putm(i32* %50, %struct.TYPE_6__** %7, i8* %51, i8* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @js_puts(i32* %54, %struct.TYPE_6__** %7, i8* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 @js_puts(i32* %57, %struct.TYPE_6__** %7, i8* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @js_putc(i32* %63, %struct.TYPE_6__** %7, i8 signext 0)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @js_pop(i32* %65, i32 1)
  br label %140

67:                                               ; preds = %21
  %68 = load i32*, i32** %2, align 8
  %69 = call i8* @js_tostring(i32* %68, i32 2)
  store i8* %69, i8** %6, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @js_putm(i32* %70, %struct.TYPE_6__** %7, i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %130, %67
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %131

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 36
  br i1 %82, label %83, label %124

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %114 [
    i32 0, label %88
    i32 36, label %91
    i32 38, label %94
    i32 96, label %102
    i32 39, label %107
  ]

88:                                               ; preds = %83
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 -1
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %83, %88
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @js_putc(i32* %92, %struct.TYPE_6__** %7, i8 signext 36)
  br label %121

94:                                               ; preds = %83
  %95 = load i32*, i32** %2, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = call i32 @js_putm(i32* %95, %struct.TYPE_6__** %7, i8* %96, i8* %100)
  br label %121

102:                                              ; preds = %83
  %103 = load i32*, i32** %2, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @js_putm(i32* %103, %struct.TYPE_6__** %7, i8* %104, i8* %105)
  br label %121

107:                                              ; preds = %83
  %108 = load i32*, i32** %2, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = call i32 @js_puts(i32* %108, %struct.TYPE_6__** %7, i8* %112)
  br label %121

114:                                              ; preds = %83
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @js_putc(i32* %115, %struct.TYPE_6__** %7, i8 signext 36)
  %117 = load i32*, i32** %2, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i32 @js_putc(i32* %117, %struct.TYPE_6__** %7, i8 signext %119)
  br label %121

121:                                              ; preds = %114, %107, %102, %94, %91
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  br label %130

124:                                              ; preds = %78
  %125 = load i32*, i32** %2, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  %128 = load i8, i8* %126, align 1
  %129 = call i32 @js_putc(i32* %125, %struct.TYPE_6__** %7, i8 signext %128)
  br label %130

130:                                              ; preds = %124, %121
  br label %74

131:                                              ; preds = %74
  %132 = load i32*, i32** %2, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = call i32 @js_puts(i32* %132, %struct.TYPE_6__** %7, i8* %136)
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @js_putc(i32* %138, %struct.TYPE_6__** %7, i8 signext 0)
  br label %140

140:                                              ; preds = %131, %27
  %141 = load i32*, i32** %2, align 8
  %142 = call i64 @js_try(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i32*, i32** %2, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = call i32 @js_free(i32* %145, %struct.TYPE_6__* %146)
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @js_throw(i32* %148)
  br label %150

150:                                              ; preds = %144, %140
  %151 = load i32*, i32** %2, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %153 = icmp ne %struct.TYPE_6__* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  br label %159

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %154
  %160 = phi i8* [ %157, %154 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %158 ]
  %161 = call i32 @js_pushstring(i32* %151, i8* %160)
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @js_endtry(i32* %162)
  %164 = load i32*, i32** %2, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = call i32 @js_free(i32* %164, %struct.TYPE_6__* %165)
  br label %167

167:                                              ; preds = %159, %18
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i32 @js_putm(i32*, %struct.TYPE_6__**, i8*, i8*) #1

declare dso_local i32 @js_puts(i32*, %struct.TYPE_6__**, i8*) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_6__**, i8 signext) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
