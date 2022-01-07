; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_sub_d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_sub_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64* }

@MP_OKAY = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i64 0, align 8
@MP_ZPOS = common dso_local global i8* null, align 8
@CHAR_BIT = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_sub_d(%struct.TYPE_8__* %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @mp_grow(%struct.TYPE_8__* %23, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @MP_OKAY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %176

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MP_NEG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i8*, i8** @MP_ZPOS, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = call i32 @mp_add_d(%struct.TYPE_8__* %45, i64 %46, %struct.TYPE_8__* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* @MP_NEG, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i64 %49, i64* %53, align 8
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %176

55:                                               ; preds = %34
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  store i64* %61, i64** %8, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %9, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %77

69:                                               ; preds = %55
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %69, %55
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77, %69
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i64, i64* %6, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %88, %90
  %92 = load i64*, i64** %9, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  store i64* %93, i64** %9, align 8
  store i64 %91, i64* %92, align 8
  br label %98

94:                                               ; preds = %82
  %95 = load i64, i64* %6, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %9, align 8
  store i64 %95, i64* %96, align 8
  br label %98

98:                                               ; preds = %94, %87
  store i32 1, i32* %12, align 4
  %99 = load i64, i64* @MP_NEG, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  br label %163

104:                                              ; preds = %77
  %105 = load i8*, i8** @MP_ZPOS, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i64*, i64** %8, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %8, align 8
  %116 = load i64, i64* %114, align 8
  %117 = load i64, i64* %6, align 8
  %118 = sub nsw i64 %116, %117
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @CHAR_BIT, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 8, %123
  %125 = sub i64 %124, 1
  %126 = ashr i64 %121, %125
  store i64 %126, i64* %10, align 8
  %127 = load i32, i32* @MP_MASK, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** %9, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %9, align 8
  %131 = load i64, i64* %129, align 8
  %132 = and i64 %131, %128
  store i64 %132, i64* %129, align 8
  store i32 1, i32* %12, align 4
  br label %133

133:                                              ; preds = %159, %104
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %133
  %140 = load i64*, i64** %8, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %8, align 8
  %142 = load i64, i64* %140, align 8
  %143 = load i64, i64* %10, align 8
  %144 = sub nsw i64 %142, %143
  %145 = load i64*, i64** %9, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i64*, i64** %9, align 8
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @CHAR_BIT, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 8, %149
  %151 = sub i64 %150, 1
  %152 = ashr i64 %147, %151
  store i64 %152, i64* %10, align 8
  %153 = load i32, i32* @MP_MASK, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64*, i64** %9, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 1
  store i64* %156, i64** %9, align 8
  %157 = load i64, i64* %155, align 8
  %158 = and i64 %157, %154
  store i64 %158, i64* %155, align 8
  br label %159

159:                                              ; preds = %139
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %133

162:                                              ; preds = %133
  br label %163

163:                                              ; preds = %162, %98
  br label %164

164:                                              ; preds = %169, %163
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i64*, i64** %9, align 8
  %171 = getelementptr inbounds i64, i64* %170, i32 1
  store i64* %171, i64** %9, align 8
  store i64 0, i64* %170, align 8
  br label %164

172:                                              ; preds = %164
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = call i32 @mp_clamp(%struct.TYPE_8__* %173)
  %175 = load i32, i32* @MP_OKAY, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %40, %31
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @mp_grow(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mp_add_d(%struct.TYPE_8__*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
