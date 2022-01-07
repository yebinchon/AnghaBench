; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_euc-jp.c_char2uni.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_euc-jp.c_char2uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32, i32*)* }

@p_nls = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@SS3 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @char2uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @char2uni(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %203

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @ENAMETOOLONG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %203

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sgt i32 %26, 127
  br i1 %27, label %28, label %185

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @SS3, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %203

42:                                               ; preds = %36
  store i32 3, i32* %9, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @IS_EUC_UDC_HI(i8 zeroext %45, i8 zeroext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @MAP_EUC2SJIS(i8 zeroext %54, i8 zeroext %57, i32 245, i8 zeroext %59, i8 zeroext %61, i32 245)
  br label %78

63:                                               ; preds = %42
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @euc2sjisibm(i8* %64, i8 zeroext %67, i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %77

74:                                               ; preds = %63
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %203

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %51
  br label %184

79:                                               ; preds = %28
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %203

85:                                               ; preds = %79
  store i32 2, i32* %9, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @IS_EUC_JISX0201KANA(i8 zeroext %88, i8 zeroext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %97, i8* %98, align 1
  %99 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %99, align 1
  br label %183

100:                                              ; preds = %85
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @IS_EUC_UDC_LOW(i8 zeroext %103, i8 zeroext %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %100
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = call i32 @MAP_EUC2SJIS(i8 zeroext %112, i8 zeroext %115, i32 245, i8 zeroext %117, i8 zeroext %119, i32 240)
  br label %182

121:                                              ; preds = %100
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @IS_EUC_JISX0208(i8 zeroext %124, i8 zeroext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %178

130:                                              ; preds = %121
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = sub nsw i32 %134, 95
  %136 = sdiv i32 %135, 2
  %137 = xor i32 %136, 160
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %138, i8* %139, align 1
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %130
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = sub nsw i32 %150, 2
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %152, i8* %153, align 1
  br label %177

154:                                              ; preds = %130
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp slt i32 %158, 224
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 %164, 97
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %166, i8* %167, align 1
  br label %176

168:                                              ; preds = %154
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 %172, 96
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %174, i8* %175, align 1
  br label %176

176:                                              ; preds = %168, %160
  br label %177

177:                                              ; preds = %176, %146
  br label %181

178:                                              ; preds = %121
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %203

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %181, %109
  br label %183

183:                                              ; preds = %182, %94
  br label %184

184:                                              ; preds = %183, %78
  br label %191

185:                                              ; preds = %22
  store i32 1, i32* %9, align 4
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  %188 = load i8, i8* %187, align 1
  %189 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %188, i8* %189, align 1
  %190 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %190, align 1
  br label %191

191:                                              ; preds = %185, %184
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p_nls, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %193, align 8
  %195 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %196 = load i32*, i32** %7, align 8
  %197 = call i32 %194(i8* %195, i32 2, i32* %196)
  store i32 %197, i32* %10, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %4, align 4
  br label %203

201:                                              ; preds = %191
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %199, %178, %82, %74, %39, %19, %13
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i64 @IS_EUC_UDC_HI(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @MAP_EUC2SJIS(i8 zeroext, i8 zeroext, i32, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i64 @euc2sjisibm(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @IS_EUC_JISX0201KANA(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @IS_EUC_UDC_LOW(i8 zeroext, i8 zeroext) #1

declare dso_local i64 @IS_EUC_JISX0208(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
