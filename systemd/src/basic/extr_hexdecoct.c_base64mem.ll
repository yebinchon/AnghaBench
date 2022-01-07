; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_base64mem.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hexdecoct.c_base64mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64mem(i8* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ true, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8**
  %21 = call i32 @assert(i8** %20)
  %22 = load i8**, i8*** %7, align 8
  %23 = call i32 @assert(i8** %22)
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 2
  %26 = mul i64 4, %25
  %27 = udiv i64 %26, 3
  %28 = add i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  store i8* %30, i8** %8, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %165

36:                                               ; preds = %16
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %93, %36
  %40 = load i32*, i32** %10, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i64, i64* %6, align 8
  %44 = udiv i64 %43, 3
  %45 = mul i64 %44, 3
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = icmp ult i32* %40, %46
  br i1 %47, label %48, label %96

48:                                               ; preds = %39
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 2
  %53 = call i8* @base64char(i32 %52)
  %54 = ptrtoint i8* %53 to i8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 3
  %61 = shl i32 %60, 4
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 4
  %66 = or i32 %61, %65
  %67 = call i8* @base64char(i32 %66)
  %68 = ptrtoint i8* %67 to i8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 15
  %75 = shl i32 %74, 2
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 6
  %80 = or i32 %75, %79
  %81 = call i8* @base64char(i32 %80)
  %82 = ptrtoint i8* %81 to i8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 63
  %89 = call i8* @base64char(i32 %88)
  %90 = ptrtoint i8* %89 to i8
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %9, align 8
  store i8 %90, i8* %91, align 1
  br label %93

93:                                               ; preds = %48
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  store i32* %95, i32** %10, align 8
  br label %39

96:                                               ; preds = %39
  %97 = load i64, i64* %6, align 8
  %98 = urem i64 %97, 3
  switch i64 %98, label %155 [
    i64 2, label %99
    i64 1, label %133
  ]

99:                                               ; preds = %96
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 2
  %104 = call i8* @base64char(i32 %103)
  %105 = ptrtoint i8* %104 to i8
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 3
  %112 = shl i32 %111, 4
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 4
  %117 = or i32 %112, %116
  %118 = call i8* @base64char(i32 %117)
  %119 = ptrtoint i8* %118 to i8
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %9, align 8
  store i8 %119, i8* %120, align 1
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 15
  %126 = shl i32 %125, 2
  %127 = call i8* @base64char(i32 %126)
  %128 = ptrtoint i8* %127 to i8
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  store i8 %128, i8* %129, align 1
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  store i8 61, i8* %131, align 1
  br label %155

133:                                              ; preds = %96
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 2
  %138 = call i8* @base64char(i32 %137)
  %139 = ptrtoint i8* %138 to i8
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %9, align 8
  store i8 %139, i8* %140, align 1
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 3
  %146 = shl i32 %145, 4
  %147 = call i8* @base64char(i32 %146)
  %148 = ptrtoint i8* %147 to i8
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  store i8 %148, i8* %149, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %9, align 8
  store i8 61, i8* %151, align 1
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %9, align 8
  store i8 61, i8* %153, align 1
  br label %155

155:                                              ; preds = %96, %133, %99
  %156 = load i8*, i8** %9, align 8
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %8, align 8
  %158 = load i8**, i8*** %7, align 8
  store i8* %157, i8** %158, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %155, %33
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @base64char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
