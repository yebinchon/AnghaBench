; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_runargs.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_runargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32)* @runargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runargs(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %12

12:                                               ; preds = %152, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %155

16:                                               ; preds = %12
  %17 = load i8**, i8*** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %152

24:                                               ; preds = %16
  %25 = load i8**, i8*** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  %34 = zext i1 %33 to i32
  %35 = call i32 @lua_assert(i32 %34)
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %150 [
    i32 101, label %44
    i32 108, label %73
    i32 106, label %102
    i32 79, label %131
    i32 98, label %143
  ]

44:                                               ; preds = %24
  %45 = load i8**, i8*** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load i8**, i8*** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %55, %44
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @lua_assert(i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @dostring(i32* %67, i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %156

72:                                               ; preds = %62
  br label %151

73:                                               ; preds = %24
  %74 = load i8**, i8*** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load i8**, i8*** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %10, align 8
  br label %91

91:                                               ; preds = %84, %73
  %92 = load i8*, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @lua_assert(i32 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @dolibrary(i32* %96, i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 1, i32* %4, align 4
  br label %156

101:                                              ; preds = %91
  br label %151

102:                                              ; preds = %24
  %103 = load i8**, i8*** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  %114 = load i8**, i8*** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %11, align 8
  br label %120

120:                                              ; preds = %113, %102
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @lua_assert(i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @dojitcmd(i32* %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  store i32 1, i32* %4, align 4
  br label %156

130:                                              ; preds = %120
  br label %151

131:                                              ; preds = %24
  %132 = load i32*, i32** %5, align 8
  %133 = load i8**, i8*** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = call i32 @dojitopt(i32* %132, i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %156

142:                                              ; preds = %131
  br label %151

143:                                              ; preds = %24
  %144 = load i32*, i32** %5, align 8
  %145 = load i8**, i8*** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = call i32 @dobytecode(i32* %144, i8** %148)
  store i32 %149, i32* %4, align 4
  br label %156

150:                                              ; preds = %24
  br label %151

151:                                              ; preds = %150, %142, %130, %101, %72
  br label %152

152:                                              ; preds = %151, %23
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %12

155:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %143, %141, %129, %100, %71
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @dostring(i32*, i8*, i8*) #1

declare dso_local i32 @dolibrary(i32*, i8*) #1

declare dso_local i32 @dojitcmd(i32*, i8*) #1

declare dso_local i32 @dojitopt(i32*, i8*) #1

declare dso_local i32 @dobytecode(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
