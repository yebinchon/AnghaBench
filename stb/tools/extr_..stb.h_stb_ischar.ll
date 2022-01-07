; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ischar.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ischar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb_ischar.bit = internal global [8 x i8] c"\01\02\04\08\10 @\80", align 1
@stb_ischar.p = internal global i32 0, align 4
@stb_ischar.tables = internal global [256 x i8]* null, align 8
@stb_ischar.sets = internal global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_ischar(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = trunc i64 %13 to i32
  %15 = call i32 @stb_perfect_hash(i32* @stb_ischar.p, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %136

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8**, i8*** @stb_ischar.sets, align 8
  %23 = call i32 @stb_arr_free(i8** %22)
  %24 = load [256 x i8]*, [256 x i8]** @stb_ischar.tables, align 8
  %25 = bitcast [256 x i8]* %24 to i8**
  %26 = call i32 @free(i8** %25)
  store [256 x i8]* null, [256 x i8]** @stb_ischar.tables, align 8
  %27 = call i32 @stb_perfect_destroy(i32* @stb_ischar.p)
  store i32 0, i32* %3, align 4
  br label %154

28:                                               ; preds = %18
  %29 = load i8**, i8*** @stb_ischar.sets, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @stb_arr_push(i8** %29, i8* %30)
  %32 = call i32 @stb_perfect_destroy(i32* @stb_ischar.p)
  %33 = load i8**, i8*** @stb_ischar.sets, align 8
  %34 = bitcast i8** %33 to i32*
  %35 = load i8**, i8*** @stb_ischar.sets, align 8
  %36 = call i32 @stb_arr_len(i8** %35)
  %37 = call i32 @stb_perfect_create(i32* @stb_ischar.p, i32* %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 7
  %44 = ashr i32 %43, 3
  store i32 %44, i32* %8, align 4
  %45 = load [256 x i8]*, [256 x i8]** @stb_ischar.tables, align 8
  %46 = bitcast [256 x i8]* %45 to i8**
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 256, %48
  %50 = trunc i64 %49 to i32
  %51 = call i64 @realloc(i8** %46, i32 %50)
  %52 = inttoptr i64 %51 to [256 x i8]*
  store [256 x i8]* %52, [256 x i8]** @stb_ischar.tables, align 8
  %53 = load [256 x i8]*, [256 x i8]** @stb_ischar.tables, align 8
  %54 = bitcast [256 x i8]* %53 to i8**
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 256, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i8** %54, i32 0, i32 %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %128, %28
  %61 = load i32, i32* %7, align 4
  %62 = load i8**, i8*** @stb_ischar.sets, align 8
  %63 = call i32 @stb_arr_len(i8** %62)
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %131

65:                                               ; preds = %60
  %66 = load i8**, i8*** @stb_ischar.sets, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = trunc i64 %71 to i32
  %73 = call i32 @stb_perfect_hash(i32* @stb_ischar.p, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 3
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* @stb_ischar.bit, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %124, %65
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i8**, i8*** @stb_ischar.sets, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %89, %86
  %102 = phi i1 [ true, %86 ], [ %100, %89 ]
  br i1 %102, label %103, label %127

103:                                              ; preds = %101
  %104 = load i32, i32* %11, align 4
  %105 = load [256 x i8]*, [256 x i8]** @stb_ischar.tables, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %105, i64 %107
  %109 = load i8**, i8*** @stb_ischar.sets, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %108, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %104
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  br label %124

124:                                              ; preds = %103
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %86

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %60

131:                                              ; preds = %60
  %132 = load i8*, i8** %5, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = trunc i64 %133 to i32
  %135 = call i32 @stb_perfect_hash(i32* @stb_ischar.p, i32 %134)
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %2
  %137 = load [256 x i8]*, [256 x i8]** @stb_ischar.tables, align 8
  %138 = load i32, i32* %6, align 4
  %139 = ashr i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %137, i64 %140
  %142 = load i8, i8* %4, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %141, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i32, i32* %6, align 4
  %148 = and i32 %147, 7
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* @stb_ischar.bit, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %146, %152
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %136, %21
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @stb_perfect_hash(i32*, i32) #1

declare dso_local i32 @stb_arr_free(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @stb_perfect_destroy(i32*) #1

declare dso_local i32 @stb_arr_push(i8**, i8*) #1

declare dso_local i32 @stb_perfect_create(i32*, i32*, i32) #1

declare dso_local i32 @stb_arr_len(i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
