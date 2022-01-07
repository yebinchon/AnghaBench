; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_import_field.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_import_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32, i32* }
%struct.field = type { i32, i32, i32, i32, i32*, i32* }

@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@SIZEOF_HEADER = common dso_local global i32 0, align 4
@SIZEOF_FIELD = common dso_local global i32 0, align 4
@SPROTO_TSTRUCT = common dso_local global i32 0, align 4
@SPROTO_TINTEGER = common dso_local global i32 0, align 4
@SPROTO_TSTRING = common dso_local global i32 0, align 4
@SPROTO_TARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.sproto*, %struct.field*, i32*)* @import_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @import_field(%struct.sproto* %0, %struct.field* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sproto*, align 8
  %6 = alloca %struct.field*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sproto* %0, %struct.sproto** %5, align 8
  store %struct.field* %1, %struct.field** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %15 = load %struct.field*, %struct.field** %6, align 8
  %16 = getelementptr inbounds %struct.field, %struct.field* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.field*, %struct.field** %6, align 8
  %18 = getelementptr inbounds %struct.field, %struct.field* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 4
  %19 = load %struct.field*, %struct.field** %6, align 8
  %20 = getelementptr inbounds %struct.field, %struct.field* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.field*, %struct.field** %6, align 8
  %22 = getelementptr inbounds %struct.field, %struct.field* %21, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = load %struct.field*, %struct.field** %6, align 8
  %24 = getelementptr inbounds %struct.field, %struct.field* %23, i32 0, i32 2
  store i32 -1, i32* %24, align 8
  %25 = load %struct.field*, %struct.field** %6, align 8
  %26 = getelementptr inbounds %struct.field, %struct.field* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @todword(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @SIZEOF_LENGTH, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @struct_field(i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %196

43:                                               ; preds = %3
  %44 = load i32, i32* @SIZEOF_HEADER, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %170, %43
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %173

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @SIZEOF_FIELD, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = call i32 @toword(i32* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i32, i32* %14, align 4
  %67 = sdiv i32 %66, 2
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %170

70:                                               ; preds = %52
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32* null, i32** %4, align 8
  br label %196

77:                                               ; preds = %73
  %78 = load %struct.sproto*, %struct.sproto** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @SIZEOF_FIELD, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = call i32* @import_string(%struct.sproto* %78, i32* %84)
  %86 = load %struct.field*, %struct.field** %6, align 8
  %87 = getelementptr inbounds %struct.field, %struct.field* %86, i32 0, i32 4
  store i32* %85, i32** %87, align 8
  br label %170

88:                                               ; preds = %70
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32* null, i32** %4, align 8
  br label %196

92:                                               ; preds = %88
  %93 = load i32, i32* %14, align 4
  %94 = sdiv i32 %93, 2
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %13, align 4
  switch i32 %96, label %168 [
    i32 1, label %97
    i32 2, label %106
    i32 3, label %154
    i32 4, label %158
    i32 5, label %164
  ]

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @SPROTO_TSTRUCT, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32* null, i32** %4, align 8
  br label %196

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.field*, %struct.field** %6, align 8
  %105 = getelementptr inbounds %struct.field, %struct.field* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %169

106:                                              ; preds = %92
  %107 = load %struct.field*, %struct.field** %6, align 8
  %108 = getelementptr inbounds %struct.field, %struct.field* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SPROTO_TINTEGER, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @calc_pow(i32 10, i32 %113)
  %115 = load %struct.field*, %struct.field** %6, align 8
  %116 = getelementptr inbounds %struct.field, %struct.field* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %153

117:                                              ; preds = %106
  %118 = load %struct.field*, %struct.field** %6, align 8
  %119 = getelementptr inbounds %struct.field, %struct.field* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @SPROTO_TSTRING, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.field*, %struct.field** %6, align 8
  %126 = getelementptr inbounds %struct.field, %struct.field* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %152

127:                                              ; preds = %117
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.sproto*, %struct.sproto** %5, align 8
  %130 = getelementptr inbounds %struct.sproto, %struct.sproto* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32* null, i32** %4, align 8
  br label %196

134:                                              ; preds = %127
  %135 = load %struct.field*, %struct.field** %6, align 8
  %136 = getelementptr inbounds %struct.field, %struct.field* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32* null, i32** %4, align 8
  br label %196

140:                                              ; preds = %134
  %141 = load i32, i32* @SPROTO_TSTRUCT, align 4
  %142 = load %struct.field*, %struct.field** %6, align 8
  %143 = getelementptr inbounds %struct.field, %struct.field* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.sproto*, %struct.sproto** %5, align 8
  %145 = getelementptr inbounds %struct.sproto, %struct.sproto* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load %struct.field*, %struct.field** %6, align 8
  %151 = getelementptr inbounds %struct.field, %struct.field* %150, i32 0, i32 5
  store i32* %149, i32** %151, align 8
  br label %152

152:                                              ; preds = %140, %123
  br label %153

153:                                              ; preds = %152, %112
  br label %169

154:                                              ; preds = %92
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.field*, %struct.field** %6, align 8
  %157 = getelementptr inbounds %struct.field, %struct.field* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %169

158:                                              ; preds = %92
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* @SPROTO_TARRAY, align 4
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %161, %158
  br label %169

164:                                              ; preds = %92
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.field*, %struct.field** %6, align 8
  %167 = getelementptr inbounds %struct.field, %struct.field* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %169

168:                                              ; preds = %92
  store i32* null, i32** %4, align 8
  br label %196

169:                                              ; preds = %164, %163, %154, %153, %102
  br label %170

170:                                              ; preds = %169, %77, %65
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %48

173:                                              ; preds = %48
  %174 = load %struct.field*, %struct.field** %6, align 8
  %175 = getelementptr inbounds %struct.field, %struct.field* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %173
  %179 = load %struct.field*, %struct.field** %6, align 8
  %180 = getelementptr inbounds %struct.field, %struct.field* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load %struct.field*, %struct.field** %6, align 8
  %185 = getelementptr inbounds %struct.field, %struct.field* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %183, %178, %173
  store i32* null, i32** %4, align 8
  br label %196

189:                                              ; preds = %183
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.field*, %struct.field** %6, align 8
  %192 = getelementptr inbounds %struct.field, %struct.field* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32*, i32** %9, align 8
  store i32* %195, i32** %4, align 8
  br label %196

196:                                              ; preds = %189, %188, %168, %139, %133, %101, %91, %76, %42
  %197 = load i32*, i32** %4, align 8
  ret i32* %197
}

declare dso_local i32 @todword(i32*) #1

declare dso_local i32 @struct_field(i32*, i32) #1

declare dso_local i32 @toword(i32*) #1

declare dso_local i32* @import_string(%struct.sproto*, i32*) #1

declare dso_local i32 @calc_pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
