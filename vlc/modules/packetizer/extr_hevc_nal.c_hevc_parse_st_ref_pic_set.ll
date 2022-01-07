; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_st_ref_pic_set.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_st_ref_pic_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.TYPE_3__*)* @hevc_parse_st_ref_pic_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse_st_ref_pic_set(i32* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %106

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @bs_read1(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %106

27:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @bs_read_ue(i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %155

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %155

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @bs_read1(i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @bs_read_ue(i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub i32 %49, %50
  %52 = sub i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = shl i32 %53, 1
  %55 = sub nsw i32 1, %54
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, 1
  %58 = mul i32 %55, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @VLC_UNUSED(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %102, %44
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ule i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @bs_read1(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @bs_read1(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84, %80
  br label %101

93:                                               ; preds = %76
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %93, %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %16, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %72

105:                                              ; preds = %72
  br label %154

106:                                              ; preds = %23, %4
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @bs_read_ue(i32* %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @bs_read_ue(i32* %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @bs_remain(i32* %111)
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %18, align 4
  %115 = add i32 %113, %114
  %116 = mul i32 %115, 2
  %117 = icmp ult i32 %112, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %155

119:                                              ; preds = %106
  store i32 0, i32* %19, align 4
  br label %120

120:                                              ; preds = %129, %119
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @bs_read_ue(i32* %125)
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @bs_read1(i32* %127)
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %19, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %120

132:                                              ; preds = %120
  store i32 0, i32* %20, align 4
  br label %133

133:                                              ; preds = %142, %132
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @bs_read_ue(i32* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @bs_read1(i32* %140)
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %20, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %20, align 4
  br label %133

145:                                              ; preds = %133
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %17, align 4
  %148 = add i32 %146, %147
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %145, %105
  store i32 1, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %118, %43, %37
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @bs_read1(i32*) #1

declare dso_local i32 @bs_read_ue(i32*) #1

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @bs_remain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
