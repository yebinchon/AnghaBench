; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_slotname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_slotname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@BCMbase = common dso_local global i64 0, align 8
@BC_KNIL = common dso_local global i64 0, align 8
@BCMdst = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@LJ_FR2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lj_debug_slotname(i32* %0, i32* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  br label %15

15:                                               ; preds = %77, %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @proto_bcpos(i32* %17, i32* %18)
  %20 = load i64, i64* %8, align 8
  %21 = call i8* @debug_varname(i32* %16, i32 %19, i64 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i8*, i8** %10, align 8
  %26 = load i8**, i8*** %9, align 8
  store i8* %25, i8** %26, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %139

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %137, %27
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 -1
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @proto_bc(i32* %31)
  %33 = icmp ugt i32* %30, %32
  br i1 %33, label %34, label %138

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @bc_op(i32 %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @bc_a(i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @bcmode_a(i64 %42)
  %44 = load i64, i64* @BCMbase, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %34
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @BC_KNIL, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @bc_d(i32 %56)
  %58 = icmp sle i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %50
  store i8* null, i8** %5, align 8
  br label %139

60:                                               ; preds = %54, %46
  br label %137

61:                                               ; preds = %34
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @bcmode_a(i64 %62)
  %64 = load i64, i64* @BCMdst, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %136

66:                                               ; preds = %61
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %136

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @bc_op(i32 %71)
  switch i32 %72, label %134 [
    i32 130, label %73
    i32 131, label %81
    i32 129, label %91
    i32 128, label %128
  ]

73:                                               ; preds = %70
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @bc_d(i32 %78)
  store i64 %79, i64* %8, align 8
  br label %15

80:                                               ; preds = %73
  br label %135

81:                                               ; preds = %70
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @bc_d(i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = xor i32 %85, -1
  %87 = call i32 @proto_kgc(i32* %82, i32 %86)
  %88 = call i32 @gco2str(i32 %87)
  %89 = call i8* @strdata(i32 %88)
  %90 = load i8**, i8*** %9, align 8
  store i8* %89, i8** %90, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %139

91:                                               ; preds = %70
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @bc_c(i32 %93)
  %95 = xor i32 %94, -1
  %96 = call i32 @proto_kgc(i32* %92, i32 %95)
  %97 = call i32 @gco2str(i32 %96)
  %98 = call i8* @strdata(i32 %97)
  %99 = load i8**, i8*** %9, align 8
  store i8* %98, i8** %99, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32* @proto_bc(i32* %101)
  %103 = icmp ugt i32* %100, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %91
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 -1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @bc_op(i32 %108)
  %110 = icmp eq i32 %109, 130
  br i1 %110, label %111, label %126

111:                                              ; preds = %104
  %112 = load i32, i32* %14, align 4
  %113 = call i64 @bc_a(i32 %112)
  %114 = load i64, i64* %13, align 8
  %115 = add nsw i64 %114, 1
  %116 = load i64, i64* @LJ_FR2, align 8
  %117 = add nsw i64 %115, %116
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load i32, i32* %14, align 4
  %121 = call i64 @bc_d(i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = call i64 @bc_b(i32 %122)
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %139

126:                                              ; preds = %119, %111, %104
  br label %127

127:                                              ; preds = %126, %91
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %139

128:                                              ; preds = %70
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i64 @bc_d(i32 %130)
  %132 = call i8* @lj_debug_uvname(i32* %129, i64 %131)
  %133 = load i8**, i8*** %9, align 8
  store i8* %132, i8** %133, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %139

134:                                              ; preds = %70
  store i8* null, i8** %5, align 8
  br label %139

135:                                              ; preds = %80
  br label %136

136:                                              ; preds = %135, %66, %61
  br label %137

137:                                              ; preds = %136, %60
  br label %28

138:                                              ; preds = %28
  store i8* null, i8** %5, align 8
  br label %139

139:                                              ; preds = %138, %134, %128, %127, %125, %81, %59, %24
  %140 = load i8*, i8** %5, align 8
  ret i8* %140
}

declare dso_local i8* @debug_varname(i32*, i32, i64) #1

declare dso_local i32 @proto_bcpos(i32*, i32*) #1

declare dso_local i32* @proto_bc(i32*) #1

declare dso_local i32 @bc_op(i32) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i64 @bcmode_a(i64) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i8* @strdata(i32) #1

declare dso_local i32 @gco2str(i32) #1

declare dso_local i32 @proto_kgc(i32*, i32) #1

declare dso_local i32 @bc_c(i32) #1

declare dso_local i64 @bc_b(i32) #1

declare dso_local i8* @lj_debug_uvname(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
