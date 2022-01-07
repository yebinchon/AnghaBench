; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_msi_load_string_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_msi_load_string_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@szStringPool = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@szStringData = common dso_local global i32 0, align 4
@LONG_STR_BYTES = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"string table corrupt?\0A\00", align 1
@StringPersistent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to add string %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"string table load failed! (%08x != %08x), please report\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Loaded %d strings\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @msi_load_string_table(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @szStringPool, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @read_stream_data(i32* %18, i32 %19, i32 %20, i32** %7, i32* %10)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ERROR_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %179

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @szStringData, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @read_stream_data(i32* %27, i32 %28, i32 %29, i32** %6, i32* %9)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ERROR_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %179

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 32768
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @LONG_STR_BYTES, align 4
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %49

47:                                               ; preds = %38, %35
  %48 = load i32*, i32** %4, align 8
  store i32 4, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %52, 4
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -32769
  %62 = shl i32 %61, 16
  %63 = or i32 %57, %62
  store i32 %63, i32* %11, align 4
  br label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @CP_ACP, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32* @init_stringtable(i32 %67, i32 %68)
  store i32* %69, i32** %5, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %179

73:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %162, %96, %73
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %168

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %78
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %74

101:                                              ; preds = %93, %78
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = mul nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %101
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 %111, 2
  %113 = add nsw i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 16
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = mul nsw i32 %119, 2
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %117, %124
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %12, align 4
  br label %137

128:                                              ; preds = %101
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %128, %109
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %168

145:                                              ; preds = %137
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %16, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* @StringPersistent, align 4
  %155 = call i32 @add_string(i32* %146, i32 %147, i32* %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %145
  %160 = load i32, i32* %16, align 4
  %161 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %159, %145
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %14, align 4
  br label %74

168:                                              ; preds = %143, %74
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %176, %72, %34, %25
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @msi_free(i32* %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @msi_free(i32* %182)
  %184 = load i32*, i32** %5, align 8
  ret i32* %184
}

declare dso_local i32 @read_stream_data(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32* @init_stringtable(i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @add_string(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @msi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
