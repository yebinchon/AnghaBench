; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer3.c_III_get_scale_factors_2.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer3.c_III_get_scale_factors_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_info_s = type { i32, i32, i32, i64, i64 }

@__const.III_get_scale_factors_2.stab = private unnamed_addr constant [3 x [6 x [4 x i8]]] [[6 x [4 x i8]] [[4 x i8] c"\06\05\05\05", [4 x i8] c"\06\05\07\03", [4 x i8] c"\0B\0A\00\00", [4 x i8] c"\07\07\07\00", [4 x i8] c"\06\06\06\03", [4 x i8] c"\08\08\05\00"], [6 x [4 x i8]] [[4 x i8] c"\09\09\09\09", [4 x i8] c"\09\09\0C\06", [4 x i8] c"\12\12\00\00", [4 x i8] c"\0C\0C\0C\00", [4 x i8] c"\0C\09\09\06", [4 x i8] c"\0F\0C\09\00"], [6 x [4 x i8]] [[4 x i8] c"\06\09\09\09", [4 x i8] c"\06\09\0C\06", [4 x i8] c"\0F\12\00\00", [4 x i8] c"\06\0F\0C\00", [4 x i8] c"\06\0C\09\06", [4 x i8] c"\06\12\09\00"]], align 16
@i_slen2 = common dso_local global i32* null, align 8
@n_slen2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.gr_info_s*, i32)* @III_get_scale_factors_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @III_get_scale_factors_2(i32* %0, i32* %1, %struct.gr_info_s* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gr_info_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x [6 x [4 x i8]]], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.gr_info_s* %2, %struct.gr_info_s** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = bitcast [3 x [6 x [4 x i8]]]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 getelementptr inbounds ([3 x [6 x [4 x i8]]], [3 x [6 x [4 x i8]]]* @__const.III_get_scale_factors_2.stab, i32 0, i32 0, i32 0, i32 0), i64 72, i1 false)
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load i32*, i32** @i_slen2, align 8
  %24 = load %struct.gr_info_s*, %struct.gr_info_s** %8, align 8
  %25 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  br label %39

31:                                               ; preds = %4
  %32 = load i32*, i32** @n_slen2, align 8
  %33 = load %struct.gr_info_s*, %struct.gr_info_s** %8, align 8
  %34 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %31, %22
  %40 = load i32, i32* %15, align 4
  %41 = lshr i32 %40, 15
  %42 = and i32 %41, 1
  %43 = load %struct.gr_info_s*, %struct.gr_info_s** %8, align 8
  %44 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %13, align 4
  %45 = load %struct.gr_info_s*, %struct.gr_info_s** %8, align 8
  %46 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load %struct.gr_info_s*, %struct.gr_info_s** %8, align 8
  %53 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %56, %49
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x [6 x [4 x i8]]], [3 x [6 x [4 x i8]]]* %16, i64 0, i64 %62
  %64 = load i32, i32* %15, align 4
  %65 = lshr i32 %64, 12
  %66 = and i32 %65, 7
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* %63, i64 0, i64 %67
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %68, i64 0, i64 0
  store i8* %69, i8** %10, align 8
  %70 = load %struct.gr_info_s*, %struct.gr_info_s** %8, align 8
  %71 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %76, 39
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  store i32 0, i32* %79, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %75

84:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %163

85:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %144, %85
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %147

89:                                               ; preds = %86
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %90, 7
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %15, align 4
  %93 = lshr i32 %92, 3
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %89
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %112, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp slt i32 %98, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @getbits_fast(i32* %107, i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %97

115:                                              ; preds = %97
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %18, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %14, align 4
  br label %143

126:                                              ; preds = %89
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %139, %126
  %128 = load i32, i32* %12, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp slt i32 %128, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %7, align 8
  store i32 0, i32* %137, align 4
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %127

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %142, %115
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %86

147:                                              ; preds = %86
  %148 = load i32, i32* %13, align 4
  %149 = shl i32 %148, 1
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %151

151:                                              ; preds = %158, %147
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %7, align 8
  store i32 0, i32* %156, align 4
  br label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %151

161:                                              ; preds = %151
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %84
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @getbits_fast(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
