; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_ba.c_ba_find_first_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_ba.c_ba_find_first_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*)* @ba_find_first_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ba_find_first_set(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %58, %4
  %34 = load i64, i64* %11, align 8
  %35 = and i64 %34, 7
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = icmp ugt i64 %38, 0
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %42, label %63

42:                                               ; preds = %40
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ext2fs_test_bit64(i64 %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %189

58:                                               ; preds = %42
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %12, align 8
  br label %33

63:                                               ; preds = %40
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @ENOENT, align 4
  store i32 %67, i32* %5, align 4
  br label %189

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load i64, i64* %11, align 8
  %74 = lshr i64 %73, 3
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %14, align 8
  br label %76

76:                                               ; preds = %92, %68
  %77 = load i64, i64* %12, align 8
  %78 = icmp uge i64 %77, 8
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %14, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = and i64 %81, 7
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %79, %76
  %85 = phi i1 [ false, %76 ], [ %83, %79 ]
  br i1 %85, label %86, label %99

86:                                               ; preds = %84
  %87 = load i8*, i8** %14, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 1, i32* %13, align 4
  br label %99

92:                                               ; preds = %86
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %14, align 8
  %95 = load i64, i64* %12, align 8
  %96 = sub i64 %95, 8
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 8
  store i64 %98, i64* %11, align 8
  br label %76

99:                                               ; preds = %91, %84
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %163, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = lshr i64 %103, 6
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  store i64 %105, i64* %16, align 8
  br label %106

106:                                              ; preds = %115, %102
  %107 = load i64, i64* %16, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i8*, i8** %14, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %120

115:                                              ; preds = %109
  %116 = load i8*, i8** %14, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  store i8* %117, i8** %14, align 8
  %118 = load i64, i64* %16, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %16, align 8
  br label %106

120:                                              ; preds = %114, %106
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %16, align 8
  %123 = sub i64 %121, %122
  %124 = mul i64 64, %123
  %125 = load i64, i64* %12, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %16, align 8
  %129 = sub i64 %127, %128
  %130 = mul i64 64, %129
  %131 = load i64, i64* %11, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = lshr i64 %133, 3
  store i64 %134, i64* %15, align 8
  %135 = load i64, i64* %15, align 8
  store i64 %135, i64* %16, align 8
  br label %136

136:                                              ; preds = %145, %120
  %137 = load i64, i64* %16, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i8*, i8** %14, align 8
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 1, i32* %13, align 4
  br label %150

145:                                              ; preds = %139
  %146 = load i8*, i8** %14, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %14, align 8
  %148 = load i64, i64* %16, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %16, align 8
  br label %136

150:                                              ; preds = %144, %136
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %16, align 8
  %153 = sub i64 %151, %152
  %154 = mul i64 8, %153
  %155 = load i64, i64* %12, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %12, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* %16, align 8
  %159 = sub i64 %157, %158
  %160 = mul i64 8, %159
  %161 = load i64, i64* %11, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %11, align 8
  br label %163

163:                                              ; preds = %150, %99
  br label %164

164:                                              ; preds = %184, %163
  %165 = load i64, i64* %12, align 8
  %166 = add i64 %165, -1
  store i64 %166, i64* %12, align 8
  %167 = icmp ugt i64 %165, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %164
  %169 = load i64, i64* %11, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @ext2fs_test_bit64(i64 %169, i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %168
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %176, %180
  %182 = trunc i64 %181 to i32
  %183 = load i32*, i32** %9, align 8
  store i32 %182, i32* %183, align 4
  store i32 0, i32* %5, align 4
  br label %189

184:                                              ; preds = %168
  %185 = load i64, i64* %11, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %11, align 8
  br label %164

187:                                              ; preds = %164
  %188 = load i32, i32* @ENOENT, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %187, %175, %66, %49
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i64 @ext2fs_test_bit64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
