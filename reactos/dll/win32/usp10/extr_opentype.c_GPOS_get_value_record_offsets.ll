; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_get_value_record_offsets.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_get_value_record_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i16, i16 }

@.str = private unnamed_addr constant [27 x i8] c"Unhandled Value Format %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*)* @GPOS_get_value_record_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GPOS_get_value_record_offsets(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, %struct.TYPE_6__* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %12, align 8
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %6
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i16
  %21 = sext i16 %20 to i32
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %25, %21
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %23, align 2
  br label %28

28:                                               ; preds = %16, %6
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i16
  %37 = sext i16 %36 to i32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %41, %37
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %39, align 2
  br label %44

44:                                               ; preds = %32, %28
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i16
  %53 = sext i16 %52 to i32
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = add nsw i32 %57, %53
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %55, align 2
  br label %60

60:                                               ; preds = %48, %44
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i16
  %69 = sext i16 %68 to i32
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i16, i16* %71, align 2
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %73, %69
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %71, align 2
  br label %76

76:                                               ; preds = %64, %60
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 16
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @GPOS_get_device_table_value(i32* %86, i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i16
  store i16 %94, i16* %90, align 2
  br label %95

95:                                               ; preds = %80, %76
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @GPOS_get_device_table_value(i32* %105, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i16
  store i16 %113, i16* %109, align 2
  br label %114

114:                                              ; preds = %99, %95
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 64
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %10, align 4
  %126 = call i64 @GPOS_get_device_table_value(i32* %124, i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i64
  %131 = add nsw i64 %130, %126
  %132 = trunc i64 %131 to i16
  store i16 %132, i16* %128, align 2
  br label %133

133:                                              ; preds = %118, %114
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, 128
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @GPOS_get_device_table_value(i32* %143, i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i16, i16* %147, align 2
  %149 = sext i16 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i16
  store i16 %151, i16* %147, align 2
  br label %152

152:                                              ; preds = %137, %133
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, 65280
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* %9, align 4
  %158 = and i32 %157, 65280
  %159 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  ret void
}

declare dso_local i64 @GPOS_get_device_table_value(i32*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
