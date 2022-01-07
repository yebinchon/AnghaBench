; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mkbusy/extr_mkbusy.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mkbusy/extr_mkbusy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i64, i64* @B_FALSE, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @B_FALSE, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* @B_FALSE, align 8
  store i64 %26, i64* %10, align 8
  store i8* null, i8** %12, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %13, align 8
  br label %30

30:                                               ; preds = %44, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %41 [
    i32 114, label %37
    i32 102, label %39
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* @B_TRUE, align 8
  store i64 %38, i64* %10, align 8
  br label %44

39:                                               ; preds = %35
  %40 = load i64, i64* @B_TRUE, align 8
  store i64 %40, i64* %9, align 8
  br label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @usage(i8* %42)
  br label %44

44:                                               ; preds = %41, %39, %37
  br label %30

45:                                               ; preds = %30
  %46 = load i64, i64* @optind, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i64, i64* @optind, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 %51
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @usage(i8* %57)
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @stat(i8* %62, %struct.stat* %11)
  store i32 %63, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %144

65:                                               ; preds = %59
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @strdup(i8* %68)
  store i8* %69, i8** %14, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @strlen(i8* %74)
  store i32 %75, i32* %17, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %84, %73
  %91 = load i8*, i8** %14, align 8
  %92 = call i8* @strrchr(i8* %91, i8 signext 47)
  store i8* %92, i8** %18, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %95, i8** %15, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call i8* @strdup(i8* %96)
  store i8* %97, i8** %16, align 8
  br label %105

98:                                               ; preds = %90
  %99 = load i8*, i8** %18, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %14, align 8
  %101 = call i8* @strdup(i8* %100)
  store i8* %101, i8** %15, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i8* @strdup(i8* %103)
  store i8* %104, i8** %16, align 8
  br label %105

105:                                              ; preds = %98, %94
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i8*, i8** %15, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** %16, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %105
  %114 = call i32 @fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @stat(i8* %116, %struct.stat* %11)
  store i32 %117, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @S_IFDIR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %119, %115
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @usage(i8* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i8*, i8** %15, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = call i32 @asprintf(i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %129, i8* %130)
  store i32 %131, i32* %19, align 4
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %16, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i32, i32* %19, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %141, label %138

138:                                              ; preds = %128
  %139 = load i8*, i8** %12, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %138, %128
  %142 = call i32 @fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %143

143:                                              ; preds = %141, %138
  br label %195

144:                                              ; preds = %59
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @S_IFMT, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @S_IFREG, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %172, label %151

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @S_IFMT, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @S_IFLNK, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %172, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @S_IFMT, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @S_IFCHR, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @S_IFMT, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @S_IFBLK, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %165, %158, %151, %144
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @strdup(i8* %175)
  store i8* %176, i8** %12, align 8
  br label %194

177:                                              ; preds = %165
  %178 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @S_IFMT, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* @S_IFDIR, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i8* @strdup(i8* %187)
  store i8* %188, i8** %12, align 8
  %189 = load i64, i64* @B_TRUE, align 8
  store i64 %189, i64* %8, align 8
  br label %193

190:                                              ; preds = %177
  %191 = load i8*, i8** %13, align 8
  %192 = call i32 @usage(i8* %191)
  br label %193

193:                                              ; preds = %190, %184
  br label %194

194:                                              ; preds = %193, %172
  br label %195

195:                                              ; preds = %194, %143
  %196 = load i8*, i8** %12, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = call i32 @fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %200

200:                                              ; preds = %198, %195
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* @B_FALSE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %227

204:                                              ; preds = %200
  %205 = load i32, i32* @S_IRUSR, align 4
  %206 = load i32, i32* @S_IWUSR, align 4
  %207 = or i32 %205, %206
  store i32 %207, i32* %22, align 4
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* @B_FALSE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i32, i32* @O_CREAT, align 4
  %213 = load i32, i32* @O_RDWR, align 4
  %214 = or i32 %212, %213
  br label %217

215:                                              ; preds = %204
  %216 = load i32, i32* @O_RDONLY, align 4
  br label %217

217:                                              ; preds = %215, %211
  %218 = phi i32 [ %214, %211 ], [ %216, %215 ]
  store i32 %218, i32* %21, align 4
  %219 = load i8*, i8** %12, align 8
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %22, align 4
  %222 = call i32 @open(i8* %219, i32 %220, i32 %221)
  store i32 %222, i32* %20, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = call i32 @fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %226

226:                                              ; preds = %224, %217
  br label %234

227:                                              ; preds = %200
  %228 = load i8*, i8** %12, align 8
  %229 = call i32* @opendir(i8* %228)
  store i32* %229, i32** %23, align 8
  %230 = icmp eq i32* %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = call i32 @fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %233

233:                                              ; preds = %231, %227
  br label %234

234:                                              ; preds = %233, %226
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 @free(i8* %235)
  %237 = load i64, i64* %9, align 8
  %238 = load i64, i64* @B_FALSE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = call i32 (...) @daemonize()
  br label %242

242:                                              ; preds = %240, %234
  %243 = call i32 (...) @pause()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fail(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @daemonize(...) #1

declare dso_local i32 @pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
