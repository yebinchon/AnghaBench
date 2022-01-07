; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_exitstub_gen.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_exitstub_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i8**, i8**, i32 }
%struct.TYPE_6__ = type { i32 }

@EXITSTUBS_PER_GROUP = common dso_local global i32 0, align 4
@XI_PUSHi8 = common dso_local global i8* null, align 8
@XI_JMPs = common dso_local global i32 0, align 4
@XI_MOVmi = common dso_local global i32 0, align 4
@XM_OFS8 = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@XM_SCALE1 = common dso_local global i32 0, align 4
@XI_JMP = common dso_local global i32 0, align 4
@lj_vm_exit_handler = common dso_local global i64 0, align 8
@MCLIM_REDZONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_5__*, i32)* @asm_exitstub_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @asm_exitstub_gen(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXITSTUBS_PER_GROUP, align 4
  %11 = mul nsw i32 %9, %10
  %12 = and i32 %11, 255
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %7, align 8
  %16 = load i8**, i8*** %7, align 8
  store i8** %16, i8*** %8, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i32, i32* @EXITSTUBS_PER_GROUP, align 4
  %19 = mul nsw i32 4, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = getelementptr inbounds i8*, i8** %21, i64 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp uge i8** %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = call i32 @asm_mclimit(%struct.TYPE_5__* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i8*, i8** @XI_PUSHi8, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %69, %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EXITSTUBS_PER_GROUP, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load i32, i32* @XI_JMPs, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  %50 = load i32, i32* @EXITSTUBS_PER_GROUP, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  %53 = mul nsw i32 4, %52
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %7, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %7, align 8
  store i8* %56, i8** %57, align 8
  %59 = load i8*, i8** @XI_PUSHi8, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %7, align 8
  store i8* %59, i8** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8**, i8*** %7, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  br label %69

69:                                               ; preds = %44
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %40

72:                                               ; preds = %40
  %73 = load i8*, i8** @XI_PUSHi8, align 8
  %74 = load i8**, i8*** %7, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %7, align 8
  store i8* %73, i8** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @EXITSTUBS_PER_GROUP, align 4
  %78 = mul nsw i32 %76, %77
  %79 = ashr i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8**, i8*** %7, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %7, align 8
  store i8* %81, i8** %82, align 8
  %84 = load i32, i32* @XI_MOVmi, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %7, align 8
  store i8* %86, i8** %87, align 8
  %89 = load i32, i32* @XM_OFS8, align 4
  %90 = load i32, i32* @RID_ESP, align 4
  %91 = call i8* @MODRM(i32 %89, i32 0, i32 %90)
  %92 = load i8**, i8*** %7, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %7, align 8
  store i8* %91, i8** %92, align 8
  %94 = load i32, i32* @XM_SCALE1, align 4
  %95 = load i32, i32* @RID_ESP, align 4
  %96 = load i32, i32* @RID_ESP, align 4
  %97 = call i8* @MODRM(i32 %94, i32 %95, i32 %96)
  %98 = load i8**, i8*** %7, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** %7, align 8
  store i8* %97, i8** %98, align 8
  %100 = load i8**, i8*** %7, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %7, align 8
  store i8* inttoptr (i64 16 to i8*), i8** %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.TYPE_6__* @J2GG(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ptr2addr(i32 %107)
  %109 = load i8**, i8*** %7, align 8
  %110 = bitcast i8** %109 to i32*
  store i32 %108, i32* %110, align 4
  %111 = load i8**, i8*** %7, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 4
  store i8** %112, i8*** %7, align 8
  %113 = load i32, i32* @XI_JMP, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = load i8**, i8*** %7, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i32 1
  store i8** %117, i8*** %7, align 8
  store i8* %115, i8** %116, align 8
  %118 = load i8**, i8*** %7, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 4
  store i8** %119, i8*** %7, align 8
  %120 = load i8**, i8*** %7, align 8
  %121 = load i64, i64* @lj_vm_exit_handler, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = bitcast i8* %122 to i8**
  %124 = call i32 @jmprel(i8** %120, i8** %123)
  %125 = load i8**, i8*** %7, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 -4
  %127 = bitcast i8** %126 to i32*
  store i32 %124, i32* %127, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i8**, i8*** %7, align 8
  %132 = call i32 @lj_mcode_commitbot(i32 %130, i8** %131)
  %133 = load i8**, i8*** %7, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i8** %133, i8*** %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* @MCLIM_REDZONE, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store i8** %141, i8*** %143, align 8
  %144 = load i8**, i8*** %8, align 8
  ret i8** %144
}

declare dso_local i32 @asm_mclimit(%struct.TYPE_5__*) #1

declare dso_local i8* @MODRM(i32, i32, i32) #1

declare dso_local i32 @ptr2addr(i32) #1

declare dso_local %struct.TYPE_6__* @J2GG(i32) #1

declare dso_local i32 @jmprel(i8**, i8**) #1

declare dso_local i32 @lj_mcode_commitbot(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
