; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_FSE_decode_header.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_FSE_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_MAX_ACCURACY_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FSE accuracy too large\00", align 1
@FSE_MAX_SYMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @FSE_decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FSE_decode_header(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @FSE_MAX_ACCURACY_LOG, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 @ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @IO_read_bits(i32* %25, i32 4)
  %27 = add nsw i32 5, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 1, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* @FSE_MAX_SYMBS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %9, align 8
  %40 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %145, %33
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @FSE_MAX_SYMBS, align 4
  %47 = icmp slt i32 %45, %46
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %146

50:                                               ; preds = %48
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @highest_set_bit(i64 %52)
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @IO_read_bits(i32* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = shl i32 1, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 1
  %68 = sub nsw i64 %65, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %50
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @IO_rewind_bits(i32* %76, i32 1)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %13, align 4
  br label %90

81:                                               ; preds = %50
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, 1
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* %16, align 8
  %98 = sub nsw i64 0, %97
  br label %101

99:                                               ; preds = %90
  %100 = load i64, i64* %16, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i64 [ %98, %96 ], [ %100, %99 ]
  %103 = load i64, i64* %8, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %40, i64 %107
  store i64 %105, i64* %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = load i64, i64* %16, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %145

113:                                              ; preds = %101
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @IO_read_bits(i32* %114, i32 2)
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %143, %113
  br label %117

117:                                              ; preds = %116
  store i32 0, i32* %18, align 4
  br label %118

118:                                              ; preds = %133, %117
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @FSE_MAX_SYMBS, align 4
  %125 = icmp slt i32 %123, %124
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i1 [ false, %118 ], [ %125, %122 ]
  br i1 %127, label %128, label %136

128:                                              ; preds = %126
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i64, i64* %40, i64 %131
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %18, align 4
  br label %118

136:                                              ; preds = %126
  %137 = load i32, i32* %17, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @IO_read_bits(i32* %140, i32 2)
  store i32 %141, i32* %17, align 4
  br label %143

142:                                              ; preds = %136
  br label %144

143:                                              ; preds = %139
  br label %116

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144, %101
  br label %41

146:                                              ; preds = %48
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @IO_align_stream(i32* %147)
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @FSE_MAX_SYMBS, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151, %146
  %156 = call i32 (...) @CORRUPTION()
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @FSE_init_dtable(i32* %158, i64* %40, i32 %159, i32 %160)
  %162 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %162)
  ret void
}

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @IO_read_bits(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @highest_set_bit(i64) #1

declare dso_local i32 @IO_rewind_bits(i32*, i32) #1

declare dso_local i32 @IO_align_stream(i32*) #1

declare dso_local i32 @CORRUPTION(...) #1

declare dso_local i32 @FSE_init_dtable(i32*, i64*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
