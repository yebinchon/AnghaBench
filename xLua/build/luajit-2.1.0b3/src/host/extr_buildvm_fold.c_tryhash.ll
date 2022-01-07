; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_fold.c_tryhash.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_fold.c_tryhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nkeys = common dso_local global i32 0, align 4
@foldkeys = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @tryhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tryhash(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 31
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  store i32 0, i32* %5, align 4
  br label %171

27:                                               ; preds = %22, %4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i32* %28, i32 255, i32 %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %167, %27
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @nkeys, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %170

39:                                               ; preds = %35
  %40 = load i32*, i32** @foldkeys, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 16777215
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 5
  %53 = call i32 @lj_rol(i32 %50, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 31
  %58 = call i32 @lj_rol(i32 %55, i32 %57)
  br label %69

59:                                               ; preds = %39
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 5
  %63 = shl i32 %60, %62
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 31
  %68 = shl i32 %65, %67
  br label %69

69:                                               ; preds = %59, %49
  %70 = phi i32 [ %58, %49 ], [ %68, %59 ]
  %71 = load i32, i32* %7, align 4
  %72 = srem i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %160

79:                                               ; preds = %69
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %153

87:                                               ; preds = %79
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %151

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %151

100:                                              ; preds = %92
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 16777215
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %100
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %8, align 4
  %113 = ashr i32 %112, 5
  %114 = call i32 @lj_rol(i32 %111, i32 %113)
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %114, %115
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, 31
  %119 = call i32 @lj_rol(i32 %116, i32 %118)
  br label %130

120:                                              ; preds = %100
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %8, align 4
  %123 = ashr i32 %122, 5
  %124 = shl i32 %121, %123
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 31
  %129 = shl i32 %126, %128
  br label %130

130:                                              ; preds = %120, %110
  %131 = phi i32 [ %119, %110 ], [ %129, %120 ]
  %132 = load i32, i32* %7, align 4
  %133 = srem i32 %131, %132
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %171

139:                                              ; preds = %130
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %145, i32* %150, align 4
  br label %152

151:                                              ; preds = %92, %87
  store i32 0, i32* %5, align 4
  br label %171

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %79
  %154 = load i32, i32* %11, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %154, i32* %159, align 4
  br label %166

160:                                              ; preds = %69
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %161, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %153
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %35

170:                                              ; preds = %35
  store i32 1, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %151, %138, %26
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lj_rol(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
