; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_token_data_line.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_token_data_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@wspace = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @get_token_data_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_token_data_line(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %14, %2
  store i32* null, i32** %3, align 8
  br label %193

23:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* @wspace, align 4
  %28 = call i64 @wcsspn(i32* %26, i32 %27)
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 60
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* @wspace, align 4
  %44 = call i64 @wcsspn(i32* %42, i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @wcslen(i32* %51)
  %53 = call i64 @_wcsnicmp(i32* %49, i32* %50, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32* null, i32** %3, align 8
  br label %193

56:                                               ; preds = %39
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @wcslen(i32* %57)
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* @wspace, align 4
  %65 = call i64 @wcsspn(i32* %63, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 62
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %9, align 4
  br label %83

75:                                               ; preds = %56
  %76 = load i32*, i32** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 61
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32* null, i32** %3, align 8
  br label %193

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* @wspace, align 4
  %90 = call i64 @wcsspn(i32* %88, i32 %89)
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %6, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 34
  br i1 %97, label %98, label %102

98:                                               ; preds = %83
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %8, align 4
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %98, %83
  %103 = load i64, i64* %6, align 8
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %147, %102
  %105 = load i32*, i32** %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %145

110:                                              ; preds = %104
  %111 = load i32*, i32** %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 34
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32*, i32** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 60
  br i1 %121, label %143, label %122

122:                                              ; preds = %116, %110
  %123 = load i32*, i32** %5, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 34
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128, %122
  %132 = load i32*, i32** %5, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 60
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br label %141

141:                                              ; preds = %137, %131
  %142 = phi i1 [ false, %131 ], [ %140, %137 ]
  br label %143

143:                                              ; preds = %141, %128, %116
  %144 = phi i1 [ true, %128 ], [ true, %116 ], [ %142, %141 ]
  br label %145

145:                                              ; preds = %143, %104
  %146 = phi i1 [ false, %104 ], [ %144, %143 ]
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %6, align 8
  br label %104

150:                                              ; preds = %145
  %151 = load i32*, i32** %5, align 8
  %152 = load i64, i64* %6, align 8
  %153 = add i64 %152, -1
  store i64 %153, i64* %6, align 8
  %154 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %175, %150
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* %7, align 8
  %158 = icmp uge i64 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  %160 = load i32*, i32** %5, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 13
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load i32*, i32** %5, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 10
  br label %171

171:                                              ; preds = %165, %159
  %172 = phi i1 [ true, %159 ], [ %170, %165 ]
  br label %173

173:                                              ; preds = %171, %155
  %174 = phi i1 [ false, %155 ], [ %172, %171 ]
  br i1 %174, label %175, label %180

175:                                              ; preds = %173
  %176 = load i32*, i32** %5, align 8
  %177 = load i64, i64* %6, align 8
  %178 = add i64 %177, -1
  store i64 %178, i64* %6, align 8
  %179 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 0, i32* %179, align 4
  br label %155

180:                                              ; preds = %173
  %181 = load i32*, i32** %5, align 8
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %191

187:                                              ; preds = %180
  %188 = load i32*, i32** %5, align 8
  %189 = load i64, i64* %7, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  br label %191

191:                                              ; preds = %187, %186
  %192 = phi i32* [ null, %186 ], [ %190, %187 ]
  store i32* %192, i32** %3, align 8
  br label %193

193:                                              ; preds = %191, %81, %55, %22
  %194 = load i32*, i32** %3, align 8
  ret i32* %194
}

declare dso_local i64 @wcsspn(i32*, i32) #1

declare dso_local i64 @_wcsnicmp(i32*, i32*, i64) #1

declare dso_local i64 @wcslen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
