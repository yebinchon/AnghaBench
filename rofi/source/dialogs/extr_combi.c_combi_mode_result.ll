; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_mode_result.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_mode_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MODE_EXIT = common dso_local global i32 0, align 4
@MENU_QUICK_SWITCH = common dso_local global i32 0, align 4
@MENU_LOWER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @combi_mode_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combi_mode_result(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.TYPE_5__* @mode_get_private_data(i32* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %10, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 33
  br i1 %27, label %28, label %118

28:                                               ; preds = %4
  store i32 -1, i32* %11, align 4
  %29 = load i8**, i8*** %8, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strchrnul(i8* %31, i8 signext 32)
  store i8* %32, i8** %12, align 8
  %33 = load i8**, i8*** %8, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i64 @g_utf8_pointer_to_offset(i8* %35, i8* %36)
  %38 = sub nsw i64 %37, 1
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %80, %41
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ false, %42 ], [ %50, %45 ]
  br i1 %52, label %53, label %83

53:                                               ; preds = %51
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @mode_get_name(i32 %61)
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call i64 @g_utf8_strlen(i8* %63, i32 -1)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %53
  %69 = load i8**, i8*** %8, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8*, i8** %15, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @utf8_strncmp(i8* %72, i8* %73, i64 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %68, %53
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %42

83:                                               ; preds = %51
  br label %84

84:                                               ; preds = %83, %28
  %85 = load i32, i32* %11, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %115

93:                                               ; preds = %87
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  store i8* %95, i8** %17, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sub i32 %105, %112
  %114 = call i32 @mode_result(i32 %103, i32 %104, i8** %17, i32 %113)
  store i32 %114, i32* %5, align 4
  br label %189

115:                                              ; preds = %87
  %116 = load i32, i32* @MODE_EXIT, align 4
  store i32 %116, i32* %5, align 4
  br label %189

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117, %4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @MENU_QUICK_SWITCH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @MENU_LOWER_MASK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %5, align 4
  br label %189

127:                                              ; preds = %118
  store i32 0, i32* %18, align 4
  br label %128

128:                                              ; preds = %184, %127
  %129 = load i32, i32* %18, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ult i32 %129, %132
  br i1 %133, label %134, label %187

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %18, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp uge i32 %135, %142
  br i1 %143, label %144, label %183

144:                                              ; preds = %134
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %18, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %152, %159
  %161 = icmp ult i32 %145, %160
  br i1 %161, label %162, label %183

162:                                              ; preds = %144
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %18, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load i8**, i8*** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %18, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sub i32 %173, %180
  %182 = call i32 @mode_result(i32 %170, i32 %171, i8** %172, i32 %181)
  store i32 %182, i32* %5, align 4
  br label %189

183:                                              ; preds = %144, %134
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %18, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %18, align 4
  br label %128

187:                                              ; preds = %128
  %188 = load i32, i32* @MODE_EXIT, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %187, %162, %123, %115, %93
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.TYPE_5__* @mode_get_private_data(i32*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @g_utf8_pointer_to_offset(i8*, i8*) #1

declare dso_local i8* @mode_get_name(i32) #1

declare dso_local i64 @g_utf8_strlen(i8*, i32) #1

declare dso_local i64 @utf8_strncmp(i8*, i8*, i64) #1

declare dso_local i32 @mode_result(i32, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
