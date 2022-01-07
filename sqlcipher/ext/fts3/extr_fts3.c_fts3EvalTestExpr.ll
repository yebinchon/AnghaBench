; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalTestExpr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalTestExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32*)* @fts3EvalTestExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3EvalTestExpr(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SQLITE_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %225

16:                                               ; preds = %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %148 [
    i32 130, label %20
    i32 131, label %20
    i32 128, label %107
    i32 129, label %128
  ]

20:                                               ; preds = %16, %16
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @fts3EvalTestExpr(%struct.TYPE_16__* %21, %struct.TYPE_15__* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fts3EvalTestExpr(%struct.TYPE_16__* %29, %struct.TYPE_15__* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @fts3EvalNearTest(%struct.TYPE_15__* %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %28, %20
  %42 = phi i1 [ false, %28 ], [ false, %20 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %106

46:                                               ; preds = %41
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 130
  br i1 %50, label %51, label %106

51:                                               ; preds = %46
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = icmp eq %struct.TYPE_12__* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 130
  br i1 %62, label %63, label %106

63:                                               ; preds = %56, %51
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %8, align 8
  br label %65

65:                                               ; preds = %88, %63
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = icmp eq %struct.TYPE_14__* %68, null
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = call i32 @fts3EvalInvalidatePoslist(%struct.TYPE_14__* %85)
  br label %87

87:                                               ; preds = %80, %70
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %8, align 8
  br label %65

92:                                               ; preds = %65
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = call i32 @fts3EvalInvalidatePoslist(%struct.TYPE_14__* %103)
  br label %105

105:                                              ; preds = %100, %92
  br label %106

106:                                              ; preds = %105, %56, %46, %41
  br label %224

107:                                              ; preds = %16
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @fts3EvalTestExpr(%struct.TYPE_16__* %108, %struct.TYPE_15__* %111, i32* %112)
  store i32 %113, i32* %9, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @fts3EvalTestExpr(%struct.TYPE_16__* %114, %struct.TYPE_15__* %117, i32* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %122, %107
  %126 = phi i1 [ true, %107 ], [ %124, %122 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %7, align 4
  br label %224

128:                                              ; preds = %16
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @fts3EvalTestExpr(%struct.TYPE_16__* %129, %struct.TYPE_15__* %132, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 5
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @fts3EvalTestExpr(%struct.TYPE_16__* %137, %struct.TYPE_15__* %140, i32* %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %136, %128
  %146 = phi i1 [ false, %128 ], [ %144, %136 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %7, align 4
  br label %224

148:                                              ; preds = %16
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %207

153:                                              ; preds = %148
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %156, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %153
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %207

166:                                              ; preds = %161, %153
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  store %struct.TYPE_14__* %169, %struct.TYPE_14__** %11, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %166
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br label %180

180:                                              ; preds = %174, %166
  %181 = phi i1 [ true, %166 ], [ %179, %174 ]
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %190 = call i32 @fts3EvalInvalidatePoslist(%struct.TYPE_14__* %189)
  br label %191

191:                                              ; preds = %188, %180
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %194 = call i32 @fts3EvalDeferredPhrase(%struct.TYPE_16__* %192, %struct.TYPE_14__* %193)
  %195 = load i32*, i32** %6, align 8
  store i32 %194, i32* %195, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %7, align 4
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %223

207:                                              ; preds = %161, %148
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %207
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %215, %218
  br label %220

220:                                              ; preds = %212, %207
  %221 = phi i1 [ false, %207 ], [ %219, %212 ]
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %220, %191
  br label %224

224:                                              ; preds = %223, %145, %125, %106
  br label %225

225:                                              ; preds = %224, %3
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local i32 @fts3EvalNearTest(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @fts3EvalInvalidatePoslist(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3EvalDeferredPhrase(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
