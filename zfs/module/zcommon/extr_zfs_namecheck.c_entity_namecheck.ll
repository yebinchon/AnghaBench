; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_namecheck.c_entity_namecheck.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_namecheck.c_entity_namecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@NAME_ERR_TOOLONG = common dso_local global i32 0, align 4
@NAME_ERR_LEADING_SLASH = common dso_local global i32 0, align 4
@NAME_ERR_EMPTY_COMPONENT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@NAME_ERR_TRAILING_SLASH = common dso_local global i32 0, align 4
@NAME_ERR_INVALCHAR = common dso_local global i32 0, align 4
@NAME_ERR_SELF_REF = common dso_local global i32 0, align 4
@NAME_ERR_PARENT_REF = common dso_local global i32 0, align 4
@NAME_ERR_MULTIPLE_DELIMITERS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @entity_namecheck(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @NAME_ERR_TOOLONG, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  store i32 -1, i32* %4, align 4
  br label %242

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @NAME_ERR_LEADING_SLASH, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  store i32 -1, i32* %4, align 4
  br label %242

37:                                               ; preds = %24
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @NAME_ERR_EMPTY_COMPONENT, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  store i32 -1, i32* %4, align 4
  br label %242

50:                                               ; preds = %37
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %9, align 8
  %52 = load i64, i64* @B_FALSE, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %239, %50
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %8, align 8
  br label %55

55:                                               ; preds = %77, %53
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 47
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 64
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 35
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %70, %65, %60, %55
  %76 = phi i1 [ false, %65 ], [ false, %60 ], [ false, %55 ], [ %74, %70 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  br label %55

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 47
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i32*, i32** %6, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @NAME_ERR_TRAILING_SLASH, align 4
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  store i32 -1, i32* %4, align 4
  br label %242

98:                                               ; preds = %85, %80
  %99 = load i8*, i8** %9, align 8
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %125, %98
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = load i8*, i8** %11, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @valid_char(i8 signext %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %11, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 37
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32*, i32** %6, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* @NAME_ERR_INVALCHAR, align 4
  %119 = load i32*, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %7, align 8
  store i8 %121, i8* %122, align 1
  br label %123

123:                                              ; preds = %117, %114
  store i32 -1, i32* %4, align 4
  br label %242

124:                                              ; preds = %109, %104
  br label %125

125:                                              ; preds = %124
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %11, align 8
  br label %100

128:                                              ; preds = %100
  %129 = load i8*, i8** %8, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 47
  br i1 %137, label %138, label %185

138:                                              ; preds = %133, %128
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %161

147:                                              ; preds = %138
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 46
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load i32*, i32** %6, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* @NAME_ERR_SELF_REF, align 4
  %158 = load i32*, i32** %6, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  store i32 -1, i32* %4, align 4
  br label %242

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %160, %138
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 46
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load i8*, i8** %9, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 46
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i32*, i32** %6, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* @NAME_ERR_PARENT_REF, align 4
  %181 = load i32*, i32** %6, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %176
  store i32 -1, i32* %4, align 4
  br label %242

183:                                              ; preds = %170, %164
  br label %184

184:                                              ; preds = %183, %161
  br label %185

185:                                              ; preds = %184, %133
  %186 = load i8*, i8** %8, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 64
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load i8*, i8** %8, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 35
  br i1 %194, label %195, label %207

195:                                              ; preds = %190, %185
  %196 = load i64, i64* %10, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i32*, i32** %6, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* @NAME_ERR_MULTIPLE_DELIMITERS, align 4
  %203 = load i32*, i32** %6, align 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  store i32 -1, i32* %4, align 4
  br label %242

205:                                              ; preds = %195
  %206 = load i64, i64* @B_TRUE, align 8
  store i64 %206, i64* %10, align 8
  br label %207

207:                                              ; preds = %205, %190
  %208 = load i8*, i8** %9, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = icmp eq i8* %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %207
  %212 = load i32*, i32** %6, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* @NAME_ERR_EMPTY_COMPONENT, align 4
  %216 = load i32*, i32** %6, align 8
  store i32 %215, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %211
  store i32 -1, i32* %4, align 4
  br label %242

218:                                              ; preds = %207
  %219 = load i8*, i8** %8, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  br label %242

224:                                              ; preds = %218
  %225 = load i8*, i8** %8, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 47
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load i64, i64* %10, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %229
  %233 = load i32*, i32** %6, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i32, i32* @NAME_ERR_TRAILING_SLASH, align 4
  %237 = load i32*, i32** %6, align 8
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %232
  store i32 -1, i32* %4, align 4
  br label %242

239:                                              ; preds = %229, %224
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  store i8* %241, i8** %9, align 8
  br label %53

242:                                              ; preds = %238, %223, %217, %204, %182, %159, %123, %97, %49, %36, %23
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @valid_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
