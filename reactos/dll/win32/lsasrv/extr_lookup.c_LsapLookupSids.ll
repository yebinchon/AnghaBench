; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupSids.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupSids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_20__*, i64, %struct.TYPE_19__, i32, i64 }
%struct.TYPE_19__ = type { i32*, i64, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@SidTypeUnknown = common dso_local global i32 0, align 4
@STATUS_NONE_MAPPED = common dso_local global i64 0, align 8
@STATUS_SOME_NOT_MAPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"done Status: %lx  Mapped: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LsapLookupSids(%struct.TYPE_22__* %0, %struct.TYPE_20__** %1, %struct.TYPE_21__* %2, i32 %3, i64* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__**, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %9, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %16, align 8
  store i64 0, i64* %19, align 8
  %21 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %21, i64* %20, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i8* @MIDL_user_allocate(i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %16, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %32 = icmp eq %struct.TYPE_20__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %34, i64* %20, align 8
  br label %182

35:                                               ; preds = %7
  %36 = call i8* @MIDL_user_allocate(i32 4)
  %37 = bitcast i8* %36 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %15, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %39 = icmp eq %struct.TYPE_20__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %41, i64* %20, align 8
  br label %182

42:                                               ; preds = %35
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i8* @MIDL_user_allocate(i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_20__*
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = icmp eq %struct.TYPE_20__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %58, i64* %20, align 8
  br label %182

59:                                               ; preds = %42
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i64 0, i64* %18, align 8
  br label %67

67:                                               ; preds = %103, %59
  %68 = load i64, i64* %18, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %67
  %75 = load i32, i32* @SidTypeUnknown, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %77 = load i64, i64* %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 5
  store i32 %75, i32* %79, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %81 = load i64, i64* %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %86 = load i64, i64* %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %91 = load i64, i64* %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %96 = load i64, i64* %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  store i32 -1, i32* %98, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %74
  %104 = load i64, i64* %18, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %18, align 8
  br label %67

106:                                              ; preds = %67
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %110 = call i64 @LsapLookupWellKnownSids(%struct.TYPE_22__* %107, %struct.TYPE_20__* %108, %struct.TYPE_20__* %109, i64* %19)
  store i64 %110, i64* %20, align 8
  %111 = load i64, i64* %20, align 8
  %112 = call i32 @NT_SUCCESS(i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %106
  %115 = load i64, i64* %20, align 8
  %116 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i64, i64* %20, align 8
  %120 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %182

123:                                              ; preds = %118, %114, %106
  %124 = load i64, i64* %19, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp eq i64 %124, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %182

131:                                              ; preds = %123
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %135 = call i64 @LsapLookupBuiltinDomainSids(%struct.TYPE_22__* %132, %struct.TYPE_20__* %133, %struct.TYPE_20__* %134, i64* %19)
  store i64 %135, i64* %20, align 8
  %136 = load i64, i64* %20, align 8
  %137 = call i32 @NT_SUCCESS(i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %131
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %182

148:                                              ; preds = %143, %139, %131
  %149 = load i64, i64* %19, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp eq i64 %149, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %182

156:                                              ; preds = %148
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %160 = call i64 @LsapLookupAccountDomainSids(%struct.TYPE_22__* %157, %struct.TYPE_20__* %158, %struct.TYPE_20__* %159, i64* %19)
  store i64 %160, i64* %20, align 8
  %161 = load i64, i64* %20, align 8
  %162 = call i32 @NT_SUCCESS(i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %156
  %165 = load i64, i64* %20, align 8
  %166 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i64, i64* %20, align 8
  %170 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %182

173:                                              ; preds = %168, %164, %156
  %174 = load i64, i64* %19, align 8
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = icmp eq i64 %174, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %182

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %180, %172, %155, %147, %130, %122, %57, %40, %33
  %183 = load i64, i64* %20, align 8
  %184 = load i64, i64* %19, align 8
  %185 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %183, i64 %184)
  %186 = load i64, i64* %20, align 8
  %187 = call i32 @NT_SUCCESS(i64 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %212, label %189

189:                                              ; preds = %182
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %191 = icmp ne %struct.TYPE_20__* %190, null
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = icmp ne %struct.TYPE_20__* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = call i32 @MIDL_user_free(%struct.TYPE_20__* %200)
  br label %202

202:                                              ; preds = %197, %192
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %204 = call i32 @MIDL_user_free(%struct.TYPE_20__* %203)
  br label %205

205:                                              ; preds = %202, %189
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %207 = icmp ne %struct.TYPE_20__* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %210 = call i32 @MIDL_user_free(%struct.TYPE_20__* %209)
  br label %211

211:                                              ; preds = %208, %205
  br label %241

212:                                              ; preds = %182
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %214 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  store %struct.TYPE_20__* %213, %struct.TYPE_20__** %214, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 1
  store %struct.TYPE_20__* %221, %struct.TYPE_20__** %223, align 8
  %224 = load i64, i64* %19, align 8
  %225 = load i64*, i64** %12, align 8
  store i64 %224, i64* %225, align 8
  %226 = load i64, i64* %19, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %212
  %229 = load i64, i64* @STATUS_NONE_MAPPED, align 8
  store i64 %229, i64* %20, align 8
  br label %240

230:                                              ; preds = %212
  %231 = load i64, i64* %19, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = icmp ult i64 %231, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = load i64, i64* @STATUS_SOME_NOT_MAPPED, align 8
  store i64 %238, i64* %20, align 8
  br label %239

239:                                              ; preds = %237, %230
  br label %240

240:                                              ; preds = %239, %228
  br label %241

241:                                              ; preds = %240, %211
  %242 = load i64, i64* %20, align 8
  ret i64 %242
}

declare dso_local i8* @MIDL_user_allocate(i32) #1

declare dso_local i64 @LsapLookupWellKnownSids(%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i64 @LsapLookupBuiltinDomainSids(%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i64*) #1

declare dso_local i64 @LsapLookupAccountDomainSids(%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i64*) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i32 @MIDL_user_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
