; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferResize.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferResize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64*, i64* }

@XML_BUFFER_ALLOC_IMMUTABLE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@BASE_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferResize(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* null, i64** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %241

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XML_BUFFER_ALLOC_IMMUTABLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %241

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %241

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %92 [
    i32 128, label %30
    i32 131, label %30
    i32 130, label %60
    i32 129, label %63
  ]

30:                                               ; preds = %26, %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %38, 2
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 10
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i32 [ %39, %35 ], [ %42, %40 ]
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %56, %43
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @UINT_MAX, align 4
  %52 = sdiv i32 %51, 2
  %53 = icmp ugt i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %241

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = mul i32 %57, 2
  store i32 %58, i32* %6, align 4
  br label %45

59:                                               ; preds = %45
  br label %95

60:                                               ; preds = %26
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 10
  store i32 %62, i32* %6, align 4
  br label %95

63:                                               ; preds = %26
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BASE_BUFFER_SIZE, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %6, align 4
  br label %91

71:                                               ; preds = %63
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %74, 2
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %87, %71
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @UINT_MAX, align 4
  %83 = sdiv i32 %82, 2
  %84 = icmp ugt i32 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %241

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = mul i32 %88, 2
  store i32 %89, i32* %6, align 4
  br label %76

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %69
  br label %95

92:                                               ; preds = %26
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, 10
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %91, %60, %59
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 128
  br i1 %99, label %100, label %175

100:                                              ; preds = %95
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %105, label %175

105:                                              ; preds = %100
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i64*, i64** %110, align 8
  %112 = ptrtoint i64* %108 to i64
  %113 = ptrtoint i64* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 8
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = icmp ugt i64 %116, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %105
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @memmove(i64* %123, i64* %126, i64 %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i64*, i64** %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  store i64* %133, i64** %135, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  %148 = add i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  br label %174

150:                                              ; preds = %105
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %8, align 8
  %155 = load i32, i32* %6, align 4
  %156 = zext i32 %155 to i64
  %157 = add i64 %154, %156
  %158 = trunc i64 %157 to i32
  %159 = call i64 @xmlRealloc(i64* %153, i32 %158)
  %160 = inttoptr i64 %159 to i64*
  store i64* %160, i64** %7, align 8
  %161 = load i64*, i64** %7, align 8
  %162 = icmp eq i64* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %150
  %164 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %241

165:                                              ; preds = %150
  %166 = load i64*, i64** %7, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  store i64* %166, i64** %168, align 8
  %169 = load i64*, i64** %7, align 8
  %170 = load i64, i64* %8, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  store i64* %171, i64** %173, align 8
  br label %174

174:                                              ; preds = %165, %120
  br label %237

175:                                              ; preds = %100, %95
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = icmp eq i64* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* %6, align 4
  %182 = call i64 @xmlMallocAtomic(i32 %181)
  %183 = inttoptr i64 %182 to i64*
  store i64* %183, i64** %7, align 8
  br label %228

184:                                              ; preds = %175
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = sub i64 %188, %191
  %193 = icmp ult i64 %192, 100
  br i1 %193, label %194, label %201

194:                                              ; preds = %184
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i64 @xmlRealloc(i64* %197, i32 %198)
  %200 = inttoptr i64 %199 to i64*
  store i64* %200, i64** %7, align 8
  br label %227

201:                                              ; preds = %184
  %202 = load i32, i32* %6, align 4
  %203 = call i64 @xmlMallocAtomic(i32 %202)
  %204 = inttoptr i64 %203 to i64*
  store i64* %204, i64** %7, align 8
  %205 = load i64*, i64** %7, align 8
  %206 = icmp ne i64* %205, null
  br i1 %206, label %207, label %226

207:                                              ; preds = %201
  %208 = load i64*, i64** %7, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i64*, i64** %210, align 8
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = call i32 @memcpy(i64* %208, i64* %211, i32 %215)
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i64*, i64** %218, align 8
  %220 = call i32 @xmlFree(i64* %219)
  %221 = load i64*, i64** %7, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i64, i64* %221, i64 %224
  store i64 0, i64* %225, align 8
  br label %226

226:                                              ; preds = %207, %201
  br label %227

227:                                              ; preds = %226, %194
  br label %228

228:                                              ; preds = %227, %180
  %229 = load i64*, i64** %7, align 8
  %230 = icmp eq i64* %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %241

233:                                              ; preds = %228
  %234 = load i64*, i64** %7, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 3
  store i64* %234, i64** %236, align 8
  br label %237

237:                                              ; preds = %233, %174
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  store i32 1, i32* %3, align 4
  br label %241

241:                                              ; preds = %237, %231, %163, %85, %54, %25, %18, %11
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i64 @xmlRealloc(i64*, i32) #1

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @xmlFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
