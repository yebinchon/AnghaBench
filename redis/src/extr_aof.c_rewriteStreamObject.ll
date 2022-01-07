; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteStreamObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteStreamObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i64 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"XADD\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MAXLEN\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"XSETID\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"XGROUP\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteStreamObject(i32* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_21__, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca %struct.TYPE_21__, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = call i32 @streamIteratorStart(i32* %9, %struct.TYPE_19__* %25, i32* null, i32* null, i32 0)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %80, %31
  %33 = call i64 @streamIteratorGetID(i32* %9, i32* %10, i32* %11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 3, %38
  %40 = call i64 @rioWriteBulkCount(i32* %36, i8 signext 42, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %249

43:                                               ; preds = %35
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @rioWriteBulkString(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %249

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = call i64 @rioWriteBulkObject(i32* %49, %struct.TYPE_20__* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %249

54:                                               ; preds = %48
  %55 = load i32*, i32** %5, align 8
  %56 = call i64 @rioWriteBulkStreamID(i32* %55, i32* %10)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %249

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %11, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = call i32 @streamIteratorGetField(i32* %9, i8** %12, i8** %13, i32* %14, i32* %15)
  %66 = load i32*, i32** %5, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @rioWriteBulkString(i32* %66, i8* %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %249

72:                                               ; preds = %64
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i64 @rioWriteBulkString(i32* %73, i8* %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %249

79:                                               ; preds = %72
  br label %60

80:                                               ; preds = %60
  br label %32

81:                                               ; preds = %32
  br label %126

82:                                               ; preds = %3
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @rioWriteBulkCount(i32* %83, i8 signext 42, i32 7)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %249

87:                                               ; preds = %82
  %88 = load i32*, i32** %5, align 8
  %89 = call i64 @rioWriteBulkString(i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %249

92:                                               ; preds = %87
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = call i64 @rioWriteBulkObject(i32* %93, %struct.TYPE_20__* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %249

98:                                               ; preds = %92
  %99 = load i32*, i32** %5, align 8
  %100 = call i64 @rioWriteBulkString(i32* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %249

103:                                              ; preds = %98
  %104 = load i32*, i32** %5, align 8
  %105 = call i64 @rioWriteBulkString(i32* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %249

108:                                              ; preds = %103
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = call i64 @rioWriteBulkStreamID(i32* %109, i32* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %249

115:                                              ; preds = %108
  %116 = load i32*, i32** %5, align 8
  %117 = call i64 @rioWriteBulkString(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %249

120:                                              ; preds = %115
  %121 = load i32*, i32** %5, align 8
  %122 = call i64 @rioWriteBulkString(i32* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %249

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %81
  %127 = load i32*, i32** %5, align 8
  %128 = call i64 @rioWriteBulkCount(i32* %127, i8 signext 42, i32 3)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %249

131:                                              ; preds = %126
  %132 = load i32*, i32** %5, align 8
  %133 = call i64 @rioWriteBulkString(i32* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %249

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %139 = call i64 @rioWriteBulkObject(i32* %137, %struct.TYPE_20__* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %249

142:                                              ; preds = %136
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = call i64 @rioWriteBulkStreamID(i32* %143, i32* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %249

149:                                              ; preds = %142
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %247

154:                                              ; preds = %149
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @raxStart(%struct.TYPE_21__* %16, i64 %157)
  %159 = call i32 @raxSeek(%struct.TYPE_21__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 0)
  br label %160

160:                                              ; preds = %243, %154
  %161 = call i64 @raxNext(%struct.TYPE_21__* %16)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %245

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  store %struct.TYPE_18__* %165, %struct.TYPE_18__** %17, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = call i64 @rioWriteBulkCount(i32* %166, i8 signext 42, i32 5)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 0, i32* %4, align 4
  br label %249

170:                                              ; preds = %163
  %171 = load i32*, i32** %5, align 8
  %172 = call i64 @rioWriteBulkString(i32* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %249

175:                                              ; preds = %170
  %176 = load i32*, i32** %5, align 8
  %177 = call i64 @rioWriteBulkString(i32* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %249

180:                                              ; preds = %175
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %183 = call i64 @rioWriteBulkObject(i32* %181, %struct.TYPE_20__* %182)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %249

186:                                              ; preds = %180
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @rioWriteBulkString(i32* %187, i8* %190, i32 %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %249

196:                                              ; preds = %186
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = call i64 @rioWriteBulkStreamID(i32* %197, i32* %199)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  store i32 0, i32* %4, align 4
  br label %249

203:                                              ; preds = %196
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @raxStart(%struct.TYPE_21__* %18, i64 %206)
  %208 = call i32 @raxSeek(%struct.TYPE_21__* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 0)
  br label %209

209:                                              ; preds = %241, %203
  %210 = call i64 @raxNext(%struct.TYPE_21__* %18)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %243

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  store %struct.TYPE_18__* %214, %struct.TYPE_18__** %19, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @raxStart(%struct.TYPE_21__* %20, i64 %217)
  %219 = call i32 @raxSeek(%struct.TYPE_21__* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 0)
  br label %220

220:                                              ; preds = %240, %212
  %221 = call i64 @raxNext(%struct.TYPE_21__* %20)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  store %struct.TYPE_18__* %225, %struct.TYPE_18__** %21, align 8
  %226 = load i32*, i32** %5, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i8*
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %237 = call i64 @rioWriteStreamPendingEntry(i32* %226, %struct.TYPE_20__* %227, i8* %230, i32 %232, %struct.TYPE_18__* %233, i64 %235, %struct.TYPE_18__* %236)
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %223
  store i32 0, i32* %4, align 4
  br label %249

240:                                              ; preds = %223
  br label %220

241:                                              ; preds = %220
  %242 = call i32 @raxStop(%struct.TYPE_21__* %20)
  br label %209

243:                                              ; preds = %209
  %244 = call i32 @raxStop(%struct.TYPE_21__* %18)
  br label %160

245:                                              ; preds = %160
  %246 = call i32 @raxStop(%struct.TYPE_21__* %16)
  br label %247

247:                                              ; preds = %245, %149
  %248 = call i32 @streamIteratorStop(i32* %9)
  store i32 1, i32* %4, align 4
  br label %249

249:                                              ; preds = %247, %239, %202, %195, %185, %179, %174, %169, %148, %141, %135, %130, %124, %119, %114, %107, %102, %97, %91, %86, %78, %71, %58, %53, %47, %42
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @streamIteratorStart(i32*, %struct.TYPE_19__*, i32*, i32*, i32) #1

declare dso_local i64 @streamIteratorGetID(i32*, i32*, i32*) #1

declare dso_local i64 @rioWriteBulkCount(i32*, i8 signext, i32) #1

declare dso_local i64 @rioWriteBulkString(i32*, i8*, i32) #1

declare dso_local i64 @rioWriteBulkObject(i32*, %struct.TYPE_20__*) #1

declare dso_local i64 @rioWriteBulkStreamID(i32*, i32*) #1

declare dso_local i32 @streamIteratorGetField(i32*, i8**, i8**, i32*, i32*) #1

declare dso_local i32 @raxStart(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @raxSeek(%struct.TYPE_21__*, i8*, i32*, i32) #1

declare dso_local i64 @raxNext(%struct.TYPE_21__*) #1

declare dso_local i64 @rioWriteStreamPendingEntry(i32*, %struct.TYPE_20__*, i8*, i32, %struct.TYPE_18__*, i64, %struct.TYPE_18__*) #1

declare dso_local i32 @raxStop(%struct.TYPE_21__*) #1

declare dso_local i32 @streamIteratorStop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
