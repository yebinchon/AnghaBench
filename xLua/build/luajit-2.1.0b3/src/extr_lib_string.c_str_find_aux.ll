; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_string.c_str_find_aux.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_string.c_str_find_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i8*, i8*, i64, i64, %struct.TYPE_12__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @str_find_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find_aux(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = call %struct.TYPE_14__* @lj_lib_checkstr(%struct.TYPE_12__* %16, i32 1)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call %struct.TYPE_14__* @lj_lib_checkstr(%struct.TYPE_12__* %18, i32 2)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = call i64 @lj_lib_optint(%struct.TYPE_12__* %20, i32 3, i32 1)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %8, align 8
  br label %33

30:                                               ; preds = %2
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %118

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 3
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 3
  %65 = call i64 @tvistruecond(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60, %51
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = call i32 @lj_str_haspattern(%struct.TYPE_14__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %118, label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = call i8* @strdata(%struct.TYPE_14__* %72)
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = call i8* @strdata(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub nsw i64 %80, %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @lj_str_find(i8* %75, i8* %77, i64 %82, i64 %85)
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %117

89:                                               ; preds = %71
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 2
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = call i8* @strdata(%struct.TYPE_14__* %95)
  %97 = ptrtoint i8* %94 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = add nsw i64 %99, 1
  %101 = call i32 @setintV(i64 %93, i64 %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 1
  %106 = load i8*, i8** %10, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = call i8* @strdata(%struct.TYPE_14__* %107)
  %109 = ptrtoint i8* %106 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = call i32 @setintV(i64 %105, i64 %115)
  store i32 2, i32* %3, align 4
  br label %206

117:                                              ; preds = %71
  br label %200

118:                                              ; preds = %67, %48
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = call i8* @strdata(%struct.TYPE_14__* %119)
  store i8* %120, i8** %12, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = call i8* @strdata(%struct.TYPE_14__* %121)
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 94
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %12, align 8
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %129, %118
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 4
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %134, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = call i8* @strdata(%struct.TYPE_14__* %135)
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  store i8* %136, i8** %137, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = call i8* @strdata(%struct.TYPE_14__* %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i8* %143, i8** %144, align 8
  br label %145

145:                                              ; preds = %197, %132
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i8* @match(%struct.TYPE_13__* %11, i8* %148, i8* %149)
  store i8* %150, i8** %15, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %186

153:                                              ; preds = %145
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %153
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %163 = call i8* @strdata(%struct.TYPE_14__* %162)
  %164 = getelementptr inbounds i8, i8* %163, i64 -1
  %165 = ptrtoint i8* %161 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = call i32 @setintV(i64 %159, i64 %167)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %175 = call i8* @strdata(%struct.TYPE_14__* %174)
  %176 = ptrtoint i8* %173 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = call i32 @setintV(i64 %171, i64 %178)
  %180 = call i32 @push_captures(%struct.TYPE_13__* %11, i8* null, i8* null)
  %181 = add nsw i32 %180, 2
  store i32 %181, i32* %3, align 4
  br label %206

182:                                              ; preds = %153
  %183 = load i8*, i8** %13, align 8
  %184 = load i8*, i8** %15, align 8
  %185 = call i32 @push_captures(%struct.TYPE_13__* %11, i8* %183, i8* %184)
  store i32 %185, i32* %3, align 4
  br label %206

186:                                              ; preds = %145
  br label %187

187:                                              ; preds = %186
  %188 = load i8*, i8** %13, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ult i8* %188, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %193, %187
  %198 = phi i1 [ false, %187 ], [ %196, %193 ]
  br i1 %198, label %145, label %199

199:                                              ; preds = %197
  br label %200

200:                                              ; preds = %199, %117
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %203, 1
  %205 = call i32 @setnilV(i64 %204)
  store i32 1, i32* %3, align 4
  br label %206

206:                                              ; preds = %200, %182, %156, %89
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_14__* @lj_lib_checkstr(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @lj_lib_optint(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @tvistruecond(i64) #1

declare dso_local i32 @lj_str_haspattern(%struct.TYPE_14__*) #1

declare dso_local i8* @lj_str_find(i8*, i8*, i64, i64) #1

declare dso_local i8* @strdata(%struct.TYPE_14__*) #1

declare dso_local i32 @setintV(i64, i64) #1

declare dso_local i8* @match(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @push_captures(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @setnilV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
