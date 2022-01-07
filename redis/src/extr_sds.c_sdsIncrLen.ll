; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sds.c_sdsIncrLen.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sds.c_sdsIncrLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@SDS_TYPE_BITS = common dso_local global i32 0, align 4
@sh = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdsIncrLen(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 -1
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @SDS_TYPE_MASK, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  switch i32 %16, label %216 [
    i32 130, label %17
    i32 128, label %60
    i32 132, label %98
    i32 131, label %136
    i32 129, label %176
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %7, align 8
  %20 = load i8, i8* %5, align 1
  %21 = call zeroext i8 @SDS_TYPE_5_LEN(i8 zeroext %20)
  store i8 %21, i8* %8, align 1
  %22 = load i64, i64* %4, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %26, %27
  %29 = icmp ult i64 %28, 32
  br i1 %29, label %42, label %30

30:                                               ; preds = %24, %17
  %31 = load i64, i64* %4, align 8
  %32 = icmp ult i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = load i64, i64* %4, align 8
  %37 = sub i64 0, %36
  %38 = trunc i64 %37 to i32
  %39 = icmp uge i32 %35, %38
  br label %40

40:                                               ; preds = %33, %30
  %41 = phi i1 [ false, %30 ], [ %39, %33 ]
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi i1 [ true, %24 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i64
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %47, %48
  %50 = load i32, i32* @SDS_TYPE_BITS, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 %49, %51
  %53 = or i64 130, %52
  %54 = trunc i64 %53 to i8
  %55 = load i8*, i8** %7, align 8
  store i8 %54, i8* %55, align 1
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i64
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %6, align 8
  br label %217

60:                                               ; preds = %2
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @SDS_HDR_VAR(i32 8, i8* %61)
  %63 = load i64, i64* %4, align 8
  %64 = icmp uge i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %68, %71
  %73 = load i64, i64* %4, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %65, %60
  %76 = load i64, i64* %4, align 8
  %77 = icmp ult i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = sub i64 0, %82
  %84 = trunc i64 %83 to i32
  %85 = zext i32 %84 to i64
  %86 = icmp uge i64 %81, %85
  br label %87

87:                                               ; preds = %78, %75
  %88 = phi i1 [ false, %75 ], [ %86, %78 ]
  br label %89

89:                                               ; preds = %87, %65
  %90 = phi i1 [ true, %65 ], [ %88, %87 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %93
  store i64 %97, i64* %95, align 8
  store i64 %97, i64* %6, align 8
  br label %217

98:                                               ; preds = %2
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @SDS_HDR_VAR(i32 16, i8* %99)
  %101 = load i64, i64* %4, align 8
  %102 = icmp uge i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub i64 %106, %109
  %111 = load i64, i64* %4, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %127, label %113

113:                                              ; preds = %103, %98
  %114 = load i64, i64* %4, align 8
  %115 = icmp ult i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %4, align 8
  %121 = sub i64 0, %120
  %122 = trunc i64 %121 to i32
  %123 = zext i32 %122 to i64
  %124 = icmp uge i64 %119, %123
  br label %125

125:                                              ; preds = %116, %113
  %126 = phi i1 [ false, %113 ], [ %124, %116 ]
  br label %127

127:                                              ; preds = %125, %103
  %128 = phi i1 [ true, %103 ], [ %126, %125 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i64, i64* %4, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, %131
  store i64 %135, i64* %133, align 8
  store i64 %135, i64* %6, align 8
  br label %217

136:                                              ; preds = %2
  %137 = load i8*, i8** %3, align 8
  %138 = call i32 @SDS_HDR_VAR(i32 32, i8* %137)
  %139 = load i64, i64* %4, align 8
  %140 = icmp uge i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %136
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %144, %147
  %149 = load i64, i64* %4, align 8
  %150 = trunc i64 %149 to i32
  %151 = zext i32 %150 to i64
  %152 = icmp uge i64 %148, %151
  br i1 %152, label %167, label %153

153:                                              ; preds = %141, %136
  %154 = load i64, i64* %4, align 8
  %155 = icmp ult i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %4, align 8
  %161 = sub i64 0, %160
  %162 = trunc i64 %161 to i32
  %163 = zext i32 %162 to i64
  %164 = icmp uge i64 %159, %163
  br label %165

165:                                              ; preds = %156, %153
  %166 = phi i1 [ false, %153 ], [ %164, %156 ]
  br label %167

167:                                              ; preds = %165, %141
  %168 = phi i1 [ true, %141 ], [ %166, %165 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i64, i64* %4, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, %171
  store i64 %175, i64* %173, align 8
  store i64 %175, i64* %6, align 8
  br label %217

176:                                              ; preds = %2
  %177 = load i8*, i8** %3, align 8
  %178 = call i32 @SDS_HDR_VAR(i32 64, i8* %177)
  %179 = load i64, i64* %4, align 8
  %180 = icmp uge i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %176
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %184, %187
  %189 = load i64, i64* %4, align 8
  %190 = trunc i64 %189 to i32
  %191 = zext i32 %190 to i64
  %192 = icmp uge i64 %188, %191
  br i1 %192, label %207, label %193

193:                                              ; preds = %181, %176
  %194 = load i64, i64* %4, align 8
  %195 = icmp ult i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %4, align 8
  %201 = sub i64 0, %200
  %202 = trunc i64 %201 to i32
  %203 = zext i32 %202 to i64
  %204 = icmp uge i64 %199, %203
  br label %205

205:                                              ; preds = %196, %193
  %206 = phi i1 [ false, %193 ], [ %204, %196 ]
  br label %207

207:                                              ; preds = %205, %181
  %208 = phi i1 [ true, %181 ], [ %206, %205 ]
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load i64, i64* %4, align 8
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, %211
  store i64 %215, i64* %213, align 8
  store i64 %215, i64* %6, align 8
  br label %217

216:                                              ; preds = %2
  store i64 0, i64* %6, align 8
  br label %217

217:                                              ; preds = %216, %207, %167, %127, %89, %42
  %218 = load i8*, i8** %3, align 8
  %219 = load i64, i64* %6, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8 0, i8* %220, align 1
  ret void
}

declare dso_local zeroext i8 @SDS_TYPE_5_LEN(i8 zeroext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SDS_HDR_VAR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
