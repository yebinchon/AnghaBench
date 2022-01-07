; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_sbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_mbstowcs_sbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbcs_table = type { i32*, i32* }

@MB_USEGLYPHCHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbcs_table*, i32, i8*, i32, i32*, i32)* @mbstowcs_sbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbstowcs_sbcs(%struct.sbcs_table* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.sbcs_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.sbcs_table* %0, %struct.sbcs_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MB_USEGLYPHCHARS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load %struct.sbcs_table*, %struct.sbcs_table** %7, align 8
  %21 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  br label %27

23:                                               ; preds = %6
  %24 = load %struct.sbcs_table*, %struct.sbcs_table** %7, align 8
  %25 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32* [ %22, %19 ], [ %26, %23 ]
  store i32* %28, i32** %13, align 8
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %10, align 4
  store i32 -1, i32* %14, align 4
  br label %35

35:                                               ; preds = %33, %27
  br label %36

36:                                               ; preds = %205, %35
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %38 [
    i32 16, label %39
    i32 15, label %49
    i32 14, label %59
    i32 13, label %69
    i32 12, label %79
    i32 11, label %89
    i32 10, label %99
    i32 9, label %109
    i32 8, label %119
    i32 7, label %129
    i32 6, label %139
    i32 5, label %149
    i32 4, label %159
    i32 3, label %169
    i32 2, label %179
    i32 1, label %189
    i32 0, label %199
  ]

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %36, %38
  %40 = load i32*, i32** %13, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 15
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 15
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %36, %39
  %50 = load i32*, i32** %13, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 14
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 14
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %36, %49
  %60 = load i32*, i32** %13, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 13
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 13
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %36, %59
  %70 = load i32*, i32** %13, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 12
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 12
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %36, %69
  %80 = load i32*, i32** %13, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 11
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 11
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %36, %79
  %90 = load i32*, i32** %13, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 10
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 10
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %36, %89
  %100 = load i32*, i32** %13, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 9
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 9
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %36, %99
  %110 = load i32*, i32** %13, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 8
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %36, %109
  %120 = load i32*, i32** %13, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 7
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 7
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %36, %119
  %130 = load i32*, i32** %13, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 6
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %36, %129
  %140 = load i32*, i32** %13, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 5
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %36, %139
  %150 = load i32*, i32** %13, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %36, %149
  %160 = load i32*, i32** %13, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 3
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %36, %159
  %170 = load i32*, i32** %13, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %36, %169
  %180 = load i32*, i32** %13, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %36, %179
  %190 = load i32*, i32** %13, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %36, %189
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %10, align 4
  %202 = icmp ult i32 %201, 16
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* %14, align 4
  ret i32 %204

205:                                              ; preds = %200
  %206 = load i32*, i32** %11, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 16
  store i32* %207, i32** %11, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 16
  store i8* %209, i8** %9, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sub i32 %210, 16
  store i32 %211, i32* %10, align 4
  br label %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
