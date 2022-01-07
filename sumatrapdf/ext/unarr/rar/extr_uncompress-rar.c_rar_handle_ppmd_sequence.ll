; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_handle_ppmd_sequence.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_handle_ppmd_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ar_archive_rar_uncomp_v3 }
%struct.ar_archive_rar_uncomp_v3 = type { i64 }

@rar_decode_ppmd7_byte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @rar_handle_ppmd_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_handle_ppmd_sequence(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ar_archive_rar_uncomp_v3*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.ar_archive_rar_uncomp_v3* %15, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32* %18, i32** %7, align 8
  %19 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %20 = call i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3* %19, i64* %8)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %26 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @lzss_emit_literal(i32* %30, i64 %31)
  store i32 1, i32* %3, align 4
  br label %109

33:                                               ; preds = %23
  %34 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %35 = call i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3* %34, i64* %9)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %109

38:                                               ; preds = %33
  %39 = load i64, i64* %9, align 8
  switch i64 %39, label %105 [
    i64 0, label %40
    i64 2, label %43
    i64 3, label %47
    i64 4, label %52
    i64 5, label %94
  ]

40:                                               ; preds = %38
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = call i32 @rar_parse_codes(%struct.TYPE_9__* %41)
  store i32 %42, i32* %3, align 4
  br label %109

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  store i32 1, i32* %3, align 4
  br label %109

47:                                               ; preds = %38
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = load i32, i32* @rar_decode_ppmd7_byte, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @rar_read_filter(%struct.TYPE_9__* %48, i32 %49, i32* %50)
  store i32 %51, i32* %3, align 4
  br label %109

52:                                               ; preds = %38
  %53 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %54 = call i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3* %53, i64* %9)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %109

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = shl i64 %58, 16
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %62 = call i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3* %61, i64* %9)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %109

65:                                               ; preds = %57
  %66 = load i64, i64* %9, align 8
  %67 = shl i64 %66, 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = or i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %73 = call i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3* %72, i64* %9)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %109

76:                                               ; preds = %65
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = or i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %83 = call i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3* %82, i64* %10)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %109

86:                                               ; preds = %76
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 2
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, 32
  %92 = trunc i64 %91 to i32
  %93 = call i32 @lzss_emit_match(i32* %87, i32 %89, i32 %92)
  store i32 1, i32* %3, align 4
  br label %109

94:                                               ; preds = %38
  %95 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %96 = call i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3* %95, i64* %10)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %109

99:                                               ; preds = %94
  %100 = load i32*, i32** %7, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add nsw i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @lzss_emit_match(i32* %100, i32 1, i32 %103)
  store i32 1, i32* %3, align 4
  br label %109

105:                                              ; preds = %38
  %106 = load i32*, i32** %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @lzss_emit_literal(i32* %106, i64 %107)
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %99, %98, %86, %85, %75, %64, %56, %47, %43, %40, %37, %29, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @rar_decode_ppmd7_symbol(%struct.ar_archive_rar_uncomp_v3*, i64*) #1

declare dso_local i32 @lzss_emit_literal(i32*, i64) #1

declare dso_local i32 @rar_parse_codes(%struct.TYPE_9__*) #1

declare dso_local i32 @rar_read_filter(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @lzss_emit_match(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
