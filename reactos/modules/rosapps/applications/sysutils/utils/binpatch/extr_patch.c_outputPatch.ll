; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/binpatch/extr_patch.c_outputPatch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/binpatch/extr_patch.c_outputPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8*, i32*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Putting patch into %s...\0A\00", align 1
@m_patch = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PATCH_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Patch is too big - %u bytes maximum, %Iu bytes needed\0A\00", align 1
@m_argv = common dso_local global i8** null, align 8
@SIZEOF_PATCH_BUFFER_MAGIC = common dso_local global i64 0, align 8
@m_patchBuffer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Couldn't find patch buffer magic in file %s - this shouldn't happen!!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Patch saved!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @outputPatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @outputPatch(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 0), align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 32, %18
  %20 = add i64 24, %19
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 2), align 8
  %22 = call i64 @strlen(i32 %21)
  %23 = add i64 %22, 1
  store i64 %23, i64* %10, align 8
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %48, %1
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 0), align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 1), align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strlen(i32 %34)
  %36 = add i64 %35, 1
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 1), align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %29
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* @PATCH_BUFFER_SIZE, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i64, i64* @PATCH_BUFFER_SIZE, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %61)
  store i32 -1, i32* %2, align 4
  br label %239

63:                                               ; preds = %51
  %64 = load i8**, i8*** @m_argv, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @loadFile(i8* %66, i64* %8)
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 -1, i32* %2, align 4
  br label %239

71:                                               ; preds = %63
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %93, %71
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @SIZEOF_PATCH_BUFFER_MAGIC, align 8
  %76 = sub i64 %74, %75
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load i8*, i8** %4, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i32, i32* @m_patchBuffer, align 4
  %83 = load i64, i64* @SIZEOF_PATCH_BUFFER_MAGIC, align 8
  %84 = call i64 @memcmp(i8* %81, i32 %82, i64 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i8*, i8** %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i64, i64* @SIZEOF_PATCH_BUFFER_MAGIC, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %5, align 8
  br label %96

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %6, align 8
  br label %72

96:                                               ; preds = %86, %72
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @SIZEOF_PATCH_BUFFER_MAGIC, align 8
  %100 = sub i64 %98, %99
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8**, i8*** @m_argv, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  store i32 -1, i32* %2, align 4
  br label %239

109:                                              ; preds = %96
  %110 = load i8*, i8** %5, align 8
  %111 = bitcast i8* %110 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %13, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 24
  %114 = bitcast i8* %113 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %14, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 0), align 8
  %116 = sext i32 %115 to i64
  %117 = mul i64 32, %116
  %118 = add i64 24, %117
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %9, align 8
  store i64 %119, i64* %11, align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 0), align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  store %struct.TYPE_6__* inttoptr (i64 24 to %struct.TYPE_6__*), %struct.TYPE_6__** %124, align 8
  %125 = load i64, i64* %11, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 2), align 8
  %133 = call i32 @strcpy(i8* %131, i32 %132)
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 2), align 8
  %135 = call i64 @strlen(i32 %134)
  %136 = add i64 %135, 1
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %11, align 8
  store i64 0, i64* %6, align 8
  br label %139

139:                                              ; preds = %213, %109
  %140 = load i64, i64* %6, align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 0), align 8
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %140, %142
  br i1 %143, label %144, label %216

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 1), align 8
  %146 = load i64, i64* %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %151 = load i64, i64* %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 1), align 8
  %155 = load i64, i64* %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %160 = load i64, i64* %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 8
  %163 = load i64, i64* %11, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %166 = load i64, i64* %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  store i8* %164, i8** %168, align 8
  %169 = load i8*, i8** %5, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 1), align 8
  %173 = load i64, i64* %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @strcpy(i8* %171, i32 %176)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 1), align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @strlen(i32 %182)
  %184 = add i64 %183, 1
  %185 = load i64, i64* %11, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %11, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 4
  store i64 %193, i64* %7, align 8
  %194 = load i64, i64* %12, align 8
  %195 = inttoptr i64 %194 to i32*
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %197 = load i64, i64* %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  store i32* %195, i32** %199, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @m_patch, i32 0, i32 1), align 8
  %204 = load i64, i64* %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i64, i64* %7, align 8
  %209 = call i32 @memcpy(i8* %202, i32 %207, i64 %208)
  %210 = load i64, i64* %7, align 8
  %211 = load i64, i64* %12, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %12, align 8
  br label %213

213:                                              ; preds = %144
  %214 = load i64, i64* %6, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %6, align 8
  br label %139

216:                                              ; preds = %139
  %217 = load i64, i64* %9, align 8
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %217, %218
  store i64 %219, i64* %7, align 8
  %220 = load i8*, i8** %5, align 8
  %221 = load i64, i64* %7, align 8
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  %223 = load i64, i64* @PATCH_BUFFER_SIZE, align 8
  %224 = load i64, i64* %7, align 8
  %225 = sub i64 %223, %224
  %226 = call i32 @memset(i8* %222, i32 0, i64 %225)
  %227 = load i8*, i8** %3, align 8
  %228 = load i8*, i8** %4, align 8
  %229 = load i64, i64* %8, align 8
  %230 = call i64 @saveFile(i8* %227, i8* %228, i64 %229)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %216
  %233 = load i8*, i8** %4, align 8
  %234 = call i32 @free(i8* %233)
  store i32 -1, i32* %2, align 4
  br label %239

235:                                              ; preds = %216
  %236 = load i8*, i8** %4, align 8
  %237 = call i32 @free(i8* %236)
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %235, %232, %102, %70, %57
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @loadFile(i8*, i64*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @saveFile(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
