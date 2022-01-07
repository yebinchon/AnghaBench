; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fuseahuref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_fuseahuref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8*, i8*, i8* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__ }

@RID_NONE = common dso_local global i8* null, align 8
@IR_HREF = common dso_local global i32 0, align 4
@IR_NEWREF = common dso_local global i32 0, align 4
@IR_UREFO = common dso_local global i32 0, align 4
@IR_KKPTR = common dso_local global i32 0, align 4
@RID_DISPATCH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32, i32)* @asm_fuseahuref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fuseahuref(%struct.TYPE_23__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_20__* @IR(i32 %10)
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %7, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ra_noreg(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %133

17:                                               ; preds = %3
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %104 [
    i32 130, label %21
    i32 129, label %32
    i32 128, label %65
  ]

21:                                               ; preds = %17
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mayfuse(%struct.TYPE_23__* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @asm_fusearef(%struct.TYPE_23__* %27, %struct.TYPE_20__* %28, i32 %29)
  br label %149

31:                                               ; preds = %21
  br label %132

32:                                               ; preds = %17
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mayfuse(%struct.TYPE_23__* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ra_alloc1(%struct.TYPE_23__* %38, i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_20__* @IR(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @RID_NONE, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  br label %149

64:                                               ; preds = %32
  br label %132

65:                                               ; preds = %17
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @irref_isk(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %65
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_20__* @IR(i32 %74)
  %76 = call %struct.TYPE_22__* @ir_kfunc(%struct.TYPE_20__* %75)
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %8, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_17__* @gcref(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  store %struct.TYPE_21__* %89, %struct.TYPE_21__** %9, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = call i8* @ptr2addr(i32* %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** @RID_NONE, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  store i8* %96, i8** %102, align 8
  br label %149

103:                                              ; preds = %65
  br label %132

104:                                              ; preds = %17
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IR_HREF, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %128, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IR_NEWREF, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IR_UREFO, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IR_KKPTR, align 4
  %127 = icmp eq i32 %125, %126
  br label %128

128:                                              ; preds = %122, %116, %110, %104
  %129 = phi i1 [ true, %116 ], [ true, %110 ], [ true, %104 ], [ %127, %122 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @lua_assert(i32 %130)
  br label %132

132:                                              ; preds = %128, %103, %64, %31
  br label %133

133:                                              ; preds = %132, %3
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @ra_alloc1(%struct.TYPE_23__* %134, i32 %135, i32 %136)
  %138 = inttoptr i64 %137 to i8*
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  store i8* %138, i8** %141, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  store i8* null, i8** %144, align 8
  %145 = load i8*, i8** @RID_NONE, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  br label %149

149:                                              ; preds = %133, %71, %37, %26
  ret void
}

declare dso_local %struct.TYPE_20__* @IR(i32) #1

declare dso_local i64 @ra_noreg(i32) #1

declare dso_local i32 @mayfuse(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @asm_fusearef(%struct.TYPE_23__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @irref_isk(i32) #1

declare dso_local %struct.TYPE_22__* @ir_kfunc(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_17__* @gcref(i32) #1

declare dso_local i8* @ptr2addr(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
