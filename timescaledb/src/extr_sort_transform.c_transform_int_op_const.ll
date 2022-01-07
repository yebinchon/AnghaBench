; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_sort_transform.c_transform_int_op_const.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_sort_transform.c_transform_int_op_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Const = common dso_local global i32 0, align 4
@INT8OID = common dso_local global i64 0, align 8
@INT4OID = common dso_local global i64 0, align 8
@INT2OID = common dso_local global i64 0, align 8
@Var = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @transform_int_op_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transform_int_op_const(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @list_length(i32 %12)
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %143

15:                                               ; preds = %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @lsecond(i32 %18)
  %20 = load i32, i32* @Const, align 4
  %21 = call i64 @IsA(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @linitial(i32 %26)
  %28 = load i32, i32* @Const, align 4
  %29 = call i64 @IsA(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %143

31:                                               ; preds = %23, %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @linitial(i32 %34)
  %36 = call i64 @exprType(i32* %35)
  store i64 %36, i64* %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @lsecond(i32 %39)
  %41 = call i64 @exprType(i32* %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @INT8OID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @INT8OID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %45, %31
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @INT4OID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @INT4OID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @INT2OID, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %142

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @INT2OID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %142

65:                                               ; preds = %61, %53, %45
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @get_opname(i32 %68)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %141

75:                                               ; preds = %65
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  switch i32 %79, label %140 [
    i32 45, label %80
    i32 43, label %80
    i32 42, label %80
    i32 47, label %117
  ]

80:                                               ; preds = %75, %75, %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32* @linitial(i32 %83)
  %85 = load i32, i32* @Const, align 4
  %86 = call i64 @IsA(i32* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @lsecond(i32 %91)
  %93 = call i32* @ts_sort_transform_expr(i32* %92)
  store i32* %93, i32** %7, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @Var, align 4
  %96 = call i64 @IsA(i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32*, i32** %7, align 8
  %100 = call i32* @copyObject(i32* %99)
  store i32* %100, i32** %2, align 8
  br label %146

101:                                              ; preds = %88
  br label %116

102:                                              ; preds = %80
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32* @linitial(i32 %105)
  %107 = call i32* @ts_sort_transform_expr(i32* %106)
  store i32* %107, i32** %8, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* @Var, align 4
  %110 = call i64 @IsA(i32* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32*, i32** %8, align 8
  %114 = call i32* @copyObject(i32* %113)
  store i32* %114, i32** %2, align 8
  br label %146

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %101
  br label %140

117:                                              ; preds = %75
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @lsecond(i32 %120)
  %122 = load i32, i32* @Const, align 4
  %123 = call i64 @IsA(i32* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %117
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32* @linitial(i32 %128)
  %130 = call i32* @ts_sort_transform_expr(i32* %129)
  store i32* %130, i32** %9, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* @Var, align 4
  %133 = call i64 @IsA(i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = load i32*, i32** %9, align 8
  %137 = call i32* @copyObject(i32* %136)
  store i32* %137, i32** %2, align 8
  br label %146

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %117
  br label %140

140:                                              ; preds = %75, %139, %116
  br label %141

141:                                              ; preds = %140, %65
  br label %142

142:                                              ; preds = %141, %61, %57
  br label %143

143:                                              ; preds = %142, %23, %1
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = bitcast %struct.TYPE_3__* %144 to i32*
  store i32* %145, i32** %2, align 8
  br label %146

146:                                              ; preds = %143, %135, %112, %98
  %147 = load i32*, i32** %2, align 8
  ret i32* %147
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local i32* @lsecond(i32) #1

declare dso_local i32* @linitial(i32) #1

declare dso_local i64 @exprType(i32*) #1

declare dso_local i8* @get_opname(i32) #1

declare dso_local i32* @ts_sort_transform_expr(i32*) #1

declare dso_local i32* @copyObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
