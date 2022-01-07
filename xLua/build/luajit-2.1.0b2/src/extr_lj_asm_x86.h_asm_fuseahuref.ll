; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fuseahuref.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_fuseahuref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i64, i8* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }

@RID_NONE = common dso_local global i8* null, align 8
@IR_HREF = common dso_local global i32 0, align 4
@IR_NEWREF = common dso_local global i32 0, align 4
@IR_UREFO = common dso_local global i32 0, align 4
@IR_KKPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32, i32)* @asm_fuseahuref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_fuseahuref(%struct.TYPE_22__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_19__* @IR(i32 %10)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %7, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ra_noreg(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %132

17:                                               ; preds = %3
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %103 [
    i32 130, label %21
    i32 129, label %32
    i32 128, label %64
  ]

21:                                               ; preds = %17
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mayfuse(%struct.TYPE_22__* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @asm_fusearef(%struct.TYPE_22__* %27, %struct.TYPE_19__* %28, i32 %29)
  br label %148

31:                                               ; preds = %21
  br label %131

32:                                               ; preds = %17
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mayfuse(%struct.TYPE_22__* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ra_alloc1(%struct.TYPE_22__* %38, i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_19__* @IR(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  %59 = load i8*, i8** @RID_NONE, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  br label %148

63:                                               ; preds = %32
  br label %131

64:                                               ; preds = %17
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @irref_isk(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %64
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.TYPE_19__* @IR(i32 %73)
  %75 = call %struct.TYPE_21__* @ir_kfunc(%struct.TYPE_19__* %74)
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %8, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_16__* @gcref(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %9, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = call i64 @ptr2addr(i32* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load i8*, i8** @RID_NONE, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  store i8* %95, i8** %101, align 8
  br label %148

102:                                              ; preds = %64
  br label %131

103:                                              ; preds = %17
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IR_HREF, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %127, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IR_NEWREF, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IR_UREFO, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IR_KKPTR, align 4
  %126 = icmp eq i32 %124, %125
  br label %127

127:                                              ; preds = %121, %115, %109, %103
  %128 = phi i1 [ true, %115 ], [ true, %109 ], [ true, %103 ], [ %126, %121 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @lua_assert(i32 %129)
  br label %131

131:                                              ; preds = %127, %102, %63, %31
  br label %132

132:                                              ; preds = %131, %3
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i64 @ra_alloc1(%struct.TYPE_22__* %133, i32 %134, i32 %135)
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  store i8* %137, i8** %140, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load i8*, i8** @RID_NONE, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  br label %148

148:                                              ; preds = %132, %70, %37, %26
  ret void
}

declare dso_local %struct.TYPE_19__* @IR(i32) #1

declare dso_local i64 @ra_noreg(i32) #1

declare dso_local i32 @mayfuse(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @asm_fusearef(%struct.TYPE_22__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @ra_alloc1(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @irref_isk(i32) #1

declare dso_local %struct.TYPE_21__* @ir_kfunc(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_16__* @gcref(i32) #1

declare dso_local i64 @ptr2addr(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
