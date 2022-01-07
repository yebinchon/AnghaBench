; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_bcread.c_lj_bcread_proto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_bcread.c_lj_bcread_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@BCDUMP_F_STRIP = common dso_local global i32 0, align 4
@LJ_TPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @lj_bcread_proto(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %18 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = call i32 @bcread_byte(%struct.TYPE_19__* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = call i32 @bcread_byte(%struct.TYPE_19__* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = call i32 @bcread_byte(%struct.TYPE_19__* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = call i32 @bcread_byte(%struct.TYPE_19__* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %28 = call i32 @bcread_uleb128(%struct.TYPE_19__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = call i32 @bcread_uleb128(%struct.TYPE_19__* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = call i32 @bcread_uleb128(%struct.TYPE_19__* %31)
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = call i32 @bcread_flags(%struct.TYPE_19__* %34)
  %36 = load i32, i32* @BCDUMP_F_STRIP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %1
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = call i32 @bcread_uleb128(%struct.TYPE_19__* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %46 = call i32 @bcread_uleb128(%struct.TYPE_19__* %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %48 = call i32 @bcread_uleb128(%struct.TYPE_19__* %47)
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 96, %52
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 4
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %59, -4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = and i32 %68, -2
  %70 = mul nsw i32 %69, 2
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @lj_mem_newgco(i32 %79, i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %3, align 8
  %83 = load i32, i32* @LJ_TPROTO, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 17
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 16
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 15
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %104 = bitcast %struct.TYPE_20__* %103 to i8*
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = call i32 @setmref(i32 %102, i8* %107)
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = bitcast %struct.TYPE_20__* %112 to i8*
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = call i32 @setmref(i32 %111, i8* %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 12
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 11
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 10
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @obj2gco(i32 %143)
  %145 = call i32 @setgcref(i32 %140, i32 %144)
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = bitcast %struct.TYPE_20__* %146 to i8*
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = mul i64 4, %153
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i8, i8* %150, i64 %155
  %157 = bitcast i8* %156 to i64*
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @bcread_bytecode(%struct.TYPE_19__* %158, %struct.TYPE_20__* %159, i32 %160)
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @bcread_uv(%struct.TYPE_19__* %162, %struct.TYPE_20__* %163, i32 %164)
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @bcread_kgc(%struct.TYPE_19__* %166, %struct.TYPE_20__* %167, i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @bcread_knum(%struct.TYPE_19__* %173, %struct.TYPE_20__* %174, i32 %175)
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %230

185:                                              ; preds = %50
  %186 = load i32, i32* %10, align 4
  %187 = sub nsw i32 %186, 1
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %188, 256
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %196

191:                                              ; preds = %185
  %192 = load i32, i32* %17, align 4
  %193 = icmp slt i32 %192, 65536
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 1, i32 2
  br label %196

196:                                              ; preds = %191, %190
  %197 = phi i32 [ 0, %190 ], [ %195, %191 ]
  %198 = shl i32 %187, %197
  store i32 %198, i32* %18, align 4
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %203 = bitcast %struct.TYPE_20__* %202 to i8*
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = call i32 @setmref(i32 %201, i8* %206)
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %212 = bitcast %struct.TYPE_20__* %211 to i8*
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = call i32 @setmref(i32 %210, i8* %218)
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @bcread_dbg(%struct.TYPE_19__* %220, %struct.TYPE_20__* %221, i32 %222)
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %228 = call i8* @bcread_varinfo(%struct.TYPE_20__* %227)
  %229 = call i32 @setmref(i32 %226, i8* %228)
  br label %243

230:                                              ; preds = %50
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @setmref(i32 %233, i8* null)
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @setmref(i32 %237, i8* null)
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @setmref(i32 %241, i8* null)
  br label %243

243:                                              ; preds = %230, %196
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %244
}

declare dso_local i32 @bcread_byte(%struct.TYPE_19__*) #1

declare dso_local i32 @bcread_uleb128(%struct.TYPE_19__*) #1

declare dso_local i32 @bcread_flags(%struct.TYPE_19__*) #1

declare dso_local i64 @lj_mem_newgco(i32, i32) #1

declare dso_local i32 @setmref(i32, i8*) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(i32) #1

declare dso_local i32 @bcread_bytecode(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bcread_uv(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bcread_kgc(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bcread_knum(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @bcread_dbg(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i8* @bcread_varinfo(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
