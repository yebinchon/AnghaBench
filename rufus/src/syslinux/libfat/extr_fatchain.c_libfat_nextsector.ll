; ModuleID = '/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_fatchain.c_libfat_nextsector.c'
source_filename = "/home/carl/AnghaBench/rufus/src/syslinux/libfat/extr_fatchain.c_libfat_nextsector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libfat_filesystem = type { i64, i64, i64, i64, i32, i32, i64 }

@LIBFAT_SECTOR_SHIFT = common dso_local global i64 0, align 8
@LIBFAT_SECTOR_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @libfat_nextsector(%struct.libfat_filesystem* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.libfat_filesystem*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.libfat_filesystem* %0, %struct.libfat_filesystem** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %14 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 1
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %19 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %25 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i64 -1, i64* %3, align 8
  br label %202

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %34 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i64 [ %38, %37 ], [ 0, %39 ]
  store i64 %41, i64* %3, align 8
  br label %202

42:                                               ; preds = %2
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %45 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %11, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %202

56:                                               ; preds = %42
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %59 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = ashr i64 %57, %60
  %62 = add nsw i64 2, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %66 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i64 -1, i64* %3, align 8
  br label %202

70:                                               ; preds = %56
  %71 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %72 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %197 [
    i32 130, label %74
    i32 129, label %139
    i32 128, label %167
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 1
  %78 = add nsw i32 %75, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %8, align 8
  %80 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %81 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @LIBFAT_SECTOR_SHIFT, align 8
  %85 = ashr i64 %83, %84
  %86 = add nsw i64 %82, %85
  store i64 %86, i64* %9, align 8
  %87 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32* @libfat_get_sector(%struct.libfat_filesystem* %87, i64 %88)
  store i32* %89, i32** %10, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %74
  store i64 -1, i64* %3, align 8
  br label %202

93:                                               ; preds = %74
  %94 = load i32*, i32** %10, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @LIBFAT_SECTOR_MASK, align 8
  %97 = and i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %103 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @LIBFAT_SECTOR_SHIFT, align 8
  %107 = ashr i64 %105, %106
  %108 = add nsw i64 %104, %107
  store i64 %108, i64* %9, align 8
  %109 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i32* @libfat_get_sector(%struct.libfat_filesystem* %109, i64 %110)
  store i32* %111, i32** %10, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %93
  store i64 -1, i64* %3, align 8
  br label %202

115:                                              ; preds = %93
  %116 = load i32*, i32** %10, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @LIBFAT_SECTOR_MASK, align 8
  %119 = and i64 %117, %118
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 8
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %115
  %129 = load i32, i32* %7, align 4
  %130 = ashr i32 %129, 4
  store i32 %130, i32* %7, align 4
  br label %134

131:                                              ; preds = %115
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, 4095
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %7, align 4
  %136 = icmp sge i32 %135, 4088
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i64 0, i64* %3, align 8
  br label %202

138:                                              ; preds = %134
  br label %198

139:                                              ; preds = %70
  %140 = load i32, i32* %6, align 4
  %141 = shl i32 %140, 1
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %8, align 8
  %143 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %144 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @LIBFAT_SECTOR_SHIFT, align 8
  %148 = ashr i64 %146, %147
  %149 = add nsw i64 %145, %148
  store i64 %149, i64* %9, align 8
  %150 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %151 = load i64, i64* %9, align 8
  %152 = call i32* @libfat_get_sector(%struct.libfat_filesystem* %150, i64 %151)
  store i32* %152, i32** %10, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %139
  store i64 -1, i64* %3, align 8
  br label %202

156:                                              ; preds = %139
  %157 = load i32*, i32** %10, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @LIBFAT_SECTOR_MASK, align 8
  %160 = and i64 %158, %159
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = call i32 @read16(i32* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp sge i32 %163, 65528
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i64 0, i64* %3, align 8
  br label %202

166:                                              ; preds = %156
  br label %198

167:                                              ; preds = %70
  %168 = load i32, i32* %6, align 4
  %169 = shl i32 %168, 2
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %8, align 8
  %171 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %172 = getelementptr inbounds %struct.libfat_filesystem, %struct.libfat_filesystem* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* @LIBFAT_SECTOR_SHIFT, align 8
  %176 = ashr i64 %174, %175
  %177 = add nsw i64 %173, %176
  store i64 %177, i64* %9, align 8
  %178 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %179 = load i64, i64* %9, align 8
  %180 = call i32* @libfat_get_sector(%struct.libfat_filesystem* %178, i64 %179)
  store i32* %180, i32** %10, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %167
  store i64 -1, i64* %3, align 8
  br label %202

184:                                              ; preds = %167
  %185 = load i32*, i32** %10, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @LIBFAT_SECTOR_MASK, align 8
  %188 = and i64 %186, %187
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = call i32 @read32(i32* %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, 268435455
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp sge i32 %193, 268435448
  br i1 %194, label %195, label %196

195:                                              ; preds = %184
  store i64 0, i64* %3, align 8
  br label %202

196:                                              ; preds = %184
  br label %198

197:                                              ; preds = %70
  store i64 -1, i64* %3, align 8
  br label %202

198:                                              ; preds = %196, %166, %138
  %199 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %4, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i64 @libfat_clustertosector(%struct.libfat_filesystem* %199, i32 %200)
  store i64 %201, i64* %3, align 8
  br label %202

202:                                              ; preds = %198, %197, %195, %183, %165, %155, %137, %114, %92, %69, %53, %40, %28
  %203 = load i64, i64* %3, align 8
  ret i64 %203
}

declare dso_local i32* @libfat_get_sector(%struct.libfat_filesystem*, i64) #1

declare dso_local i32 @read16(i32*) #1

declare dso_local i32 @read32(i32*) #1

declare dso_local i64 @libfat_clustertosector(%struct.libfat_filesystem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
