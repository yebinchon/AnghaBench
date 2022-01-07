; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_find_kinit.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_find_kinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@BCMbase = common dso_local global i64 0, align 8
@BCMdst = common dso_local global i64 0, align 8
@BC_KSHORT = common dso_local global i64 0, align 8
@BC_KNUM = common dso_local global i64 0, align 8
@BC_JMP = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i64)* @find_kinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_kinit(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @proto_bc(i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  store i32* %24, i32** %10, align 8
  br label %25

25:                                               ; preds = %151, %4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ugt i32* %26, %27
  br i1 %28, label %29, label %154

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @bc_op(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @bcmode_a(i64 %34)
  %36 = load i64, i64* @BCMbase, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @bc_a(i32 %39)
  %41 = load i64, i64* %8, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %155

44:                                               ; preds = %38, %29
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @bcmode_a(i64 %45)
  %47 = load i64, i64* @BCMdst, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %149

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @bc_a(i32 %50)
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %149

54:                                               ; preds = %49
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @BC_KSHORT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @BC_KNUM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %148

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %10, align 8
  store i32* %63, i32** %14, align 8
  br label %64

64:                                               ; preds = %92, %62
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ugt i32* %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @bc_op(i32 %70)
  %72 = load i64, i64* @BC_JMP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bc_j(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32* %81, i32** %15, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = icmp ugt i32* %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = icmp ule i32* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %155

90:                                               ; preds = %85, %74
  br label %91

91:                                               ; preds = %90, %68
  br label %92

92:                                               ; preds = %91
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 -1
  store i32* %94, i32** %10, align 8
  br label %64

95:                                               ; preds = %64
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @BC_KSHORT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @bc_d(i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %16, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* @IRT_INT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = load i64, i64* %16, align 8
  %110 = call i32 @lj_ir_kint(%struct.TYPE_5__* %108, i64 %109)
  br label %115

111:                                              ; preds = %99
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = load i64, i64* %16, align 8
  %114 = call i32 @lj_ir_knum(%struct.TYPE_5__* %112, i64 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i32 [ %110, %107 ], [ %114, %111 ]
  store i32 %116, i32* %5, align 4
  br label %155

117:                                              ; preds = %95
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @bc_d(i32 %121)
  %123 = call i32* @proto_knumtv(i32 %120, i64 %122)
  store i32* %123, i32** %17, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* @IRT_INT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %117
  %128 = load i32*, i32** %17, align 8
  %129 = call i64 @numberVint(i32* %128)
  store i64 %129, i64* %18, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call i64 @tvisint(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %127
  %134 = load i32*, i32** %17, align 8
  %135 = call i64 @numV(i32* %134)
  %136 = load i64, i64* %18, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133, %127
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = load i64, i64* %18, align 8
  %141 = call i32 @lj_ir_kint(%struct.TYPE_5__* %139, i64 %140)
  store i32 %141, i32* %5, align 4
  br label %155

142:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %155

143:                                              ; preds = %117
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %145 = load i32*, i32** %17, align 8
  %146 = call i64 @numberVnum(i32* %145)
  %147 = call i32 @lj_ir_knum(%struct.TYPE_5__* %144, i64 %146)
  store i32 %147, i32* %5, align 4
  br label %155

148:                                              ; preds = %58
  store i32 0, i32* %5, align 4
  br label %155

149:                                              ; preds = %49, %44
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 -1
  store i32* %153, i32** %10, align 8
  br label %25

154:                                              ; preds = %25
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %148, %143, %142, %138, %115, %89, %43
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32* @proto_bc(i32) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i64 @bcmode_a(i64) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i32 @bc_j(i32) #1

declare dso_local i64 @bc_d(i32) #1

declare dso_local i32 @lj_ir_kint(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @lj_ir_knum(%struct.TYPE_5__*, i64) #1

declare dso_local i32* @proto_knumtv(i32, i64) #1

declare dso_local i64 @numberVint(i32*) #1

declare dso_local i64 @tvisint(i32*) #1

declare dso_local i64 @numV(i32*) #1

declare dso_local i64 @numberVnum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
