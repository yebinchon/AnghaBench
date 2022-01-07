; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rc2.c_rc2_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rc2.c_rc2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@CRYPT_INVALID_KEYSIZE = common dso_local global i32 0, align 4
@CRYPT_INVALID_ROUNDS = common dso_local global i32 0, align 4
@permute = common dso_local global i8* null, align 8
@CRYPT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc2_setup(i8* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 128
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %5
  %26 = load i32, i32* @CRYPT_INVALID_KEYSIZE, align 4
  store i32 %26, i32* %6, align 4
  br label %183

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 16
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @CRYPT_INVALID_ROUNDS, align 4
  store i32 %34, i32* %6, align 4
  br label %183

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 3
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 1024
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1024, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %41
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %60
  store i8 %58, i8* %61, align 1
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 128
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %96, %68
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %71, 128
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load i8*, i8** @permute, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = add nsw i32 %80, %87
  %89 = and i32 %88, 255
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %74, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %94
  store i8 %92, i8* %95, align 1
  br label %96

96:                                               ; preds = %73
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %70

99:                                               ; preds = %70
  br label %100

100:                                              ; preds = %99, %65
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 7
  %103 = lshr i32 %102, 3
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 0, %104
  %106 = and i32 7, %105
  %107 = ashr i32 255, %106
  store i32 %107, i32* %15, align 4
  %108 = load i8*, i8** @permute, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sub i32 128, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %15, align 4
  %116 = and i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %108, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load i32, i32* %14, align 4
  %121 = sub i32 128, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %122
  store i8 %119, i8* %123, align 1
  %124 = load i32, i32* %14, align 4
  %125 = sub i32 127, %124
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %151, %100
  %127 = load i32, i32* %16, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = load i8*, i8** @permute, align 8
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %14, align 4
  %139 = add i32 %137, %138
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = xor i32 %136, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %130, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %149
  store i8 %147, i8* %150, align 1
  br label %151

151:                                              ; preds = %129
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %16, align 4
  br label %126

154:                                              ; preds = %126
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %178, %154
  %156 = load i32, i32* %16, align 4
  %157 = icmp slt i32 %156, 64
  br i1 %157, label %158, label %181

158:                                              ; preds = %155
  %159 = load i32, i32* %16, align 4
  %160 = mul nsw i32 2, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* %16, align 4
  %166 = mul nsw i32 2, %165
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = shl i32 %171, 8
  %173 = add i32 %164, %172
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %158
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %155

181:                                              ; preds = %155
  %182 = load i32, i32* @CRYPT_OK, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %181, %33, %25
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
