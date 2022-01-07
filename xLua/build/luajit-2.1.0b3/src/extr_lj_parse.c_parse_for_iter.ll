; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_for_iter.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_parse_for_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i8* }

@VARNAME_FOR_GEN = common dso_local global i32 0, align 4
@VARNAME_FOR_STATE = common dso_local global i32 0, align 4
@VARNAME_FOR_CTL = common dso_local global i32 0, align 4
@TK_in = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i64 0, align 8
@TK_do = common dso_local global i32 0, align 4
@BC_ISNEXT = common dso_local global i32 0, align 4
@BC_JMP = common dso_local global i32 0, align 4
@NO_JMP = common dso_local global i32 0, align 4
@BC_ITERN = common dso_local global i32 0, align 4
@BC_ITERC = common dso_local global i32 0, align 4
@BC_ITERL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32*)* @parse_for_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_for_iter(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 3
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @VARNAME_FOR_GEN, align 4
  %29 = call i32 @var_new_fixed(%struct.TYPE_24__* %25, i32 %26, i32 %28)
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @VARNAME_FOR_STATE, align 4
  %34 = call i32 @var_new_fixed(%struct.TYPE_24__* %30, i32 %31, i32 %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @VARNAME_FOR_CTL, align 4
  %39 = call i32 @var_new_fixed(%struct.TYPE_24__* %35, i32 %36, i32 %38)
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @var_new(%struct.TYPE_24__* %40, i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %49, %2
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %47 = call i64 @lex_opt(%struct.TYPE_24__* %46, i8 signext 44)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = call i32* @lex_str(%struct.TYPE_24__* %53)
  %55 = call i32 @var_new(%struct.TYPE_24__* %50, i32 %51, i32* %54)
  br label %45

56:                                               ; preds = %45
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %58 = load i32, i32* @TK_in, align 4
  %59 = call i32 @lex_check(%struct.TYPE_24__* %57, i32 %58)
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %8, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %65 = call i32 @expr_list(%struct.TYPE_24__* %64, i32* %6)
  %66 = call i32 @assign_adjust(%struct.TYPE_24__* %63, i32 3, i32 %65, i32* %6)
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = load i64, i64* @LJ_FR2, align 8
  %69 = add nsw i64 3, %68
  %70 = call i32 @bcreg_bump(%struct.TYPE_25__* %67, i64 %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp sle i32 %71, 5
  br i1 %72, label %73, label %79

73:                                               ; preds = %56
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @predict_next(%struct.TYPE_24__* %74, %struct.TYPE_25__* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %73, %56
  %80 = phi i1 [ false, %56 ], [ %78, %73 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %83 = call i32 @var_add(%struct.TYPE_24__* %82, i32 3)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %85 = load i32, i32* @TK_do, align 4
  %86 = call i32 @lex_check(%struct.TYPE_24__* %84, i32 %85)
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* @BC_ISNEXT, align 4
  br label %94

92:                                               ; preds = %79
  %93 = load i32, i32* @BC_JMP, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @NO_JMP, align 4
  %98 = call i32 @bcemit_AJ(%struct.TYPE_25__* %87, i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %100 = call i32 @fscope_begin(%struct.TYPE_25__* %99, i32* %13, i32 0)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 3
  %104 = call i32 @var_add(%struct.TYPE_24__* %101, i32 %103)
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 3
  %108 = call i32 @bcreg_reserve(%struct.TYPE_25__* %105, i32 %107)
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %110 = call i32 @parse_block(%struct.TYPE_24__* %109)
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %112 = call i32 @fscope_end(%struct.TYPE_25__* %111)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @jmp_patchins(%struct.TYPE_25__* %113, i32 %114, i32 %117)
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %94
  %123 = load i32, i32* @BC_ITERN, align 4
  br label %126

124:                                              ; preds = %94
  %125 = load i32, i32* @BC_ITERC, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, 3
  %131 = add nsw i32 %130, 1
  %132 = call i32 @bcemit_ABC(%struct.TYPE_25__* %119, i32 %127, i32 %128, i32 %131, i32 3)
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %134 = load i32, i32* @BC_ITERL, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @NO_JMP, align 4
  %137 = call i32 @bcemit_AJ(%struct.TYPE_25__* %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i8*, i8** %8, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  store i8* %138, i8** %146, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  store i8* %147, i8** %154, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32 @jmp_patchins(%struct.TYPE_25__* %155, i32 %156, i32 %158)
  ret void
}

declare dso_local i32 @var_new_fixed(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @var_new(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i64 @lex_opt(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i32* @lex_str(%struct.TYPE_24__*) #1

declare dso_local i32 @lex_check(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @assign_adjust(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local i32 @expr_list(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @bcreg_bump(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @predict_next(%struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @var_add(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @bcemit_AJ(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @fscope_begin(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @bcreg_reserve(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @parse_block(%struct.TYPE_24__*) #1

declare dso_local i32 @fscope_end(%struct.TYPE_25__*) #1

declare dso_local i32 @jmp_patchins(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @bcemit_ABC(%struct.TYPE_25__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
