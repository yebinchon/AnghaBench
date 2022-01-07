; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_dir_next.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_dir_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i64, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i8* }

@FR_NO_FILE = common dso_local global i32 0, align 4
@SZ_DIRE = common dso_local global i32 0, align 4
@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @dir_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_next(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 65535
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @FR_NO_FILE, align 4
  store i32 %22, i32* %3, align 4
  br label %227

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i32 @SS(%struct.TYPE_9__* %27)
  %29 = load i32, i32* @SZ_DIRE, align 4
  %30 = sdiv i32 %28, %29
  %31 = srem i32 %24, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %203, label %33

33:                                               ; preds = %23
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %35, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @FR_NO_FILE, align 4
  store i32 %51, i32* %3, align 4
  br label %227

52:                                               ; preds = %42
  br label %202

53:                                               ; preds = %33
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @SS(%struct.TYPE_9__* %57)
  %59 = load i32, i32* @SZ_DIRE, align 4
  %60 = sdiv i32 %58, %59
  %61 = sdiv i32 %54, %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %61, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %201

70:                                               ; preds = %53
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @get_fat(%struct.TYPE_9__* %73, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %81, i32* %3, align 4
  br label %227

82:                                               ; preds = %70
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @FR_DISK_ERR, align 4
  store i32 %86, i32* %3, align 4
  br label %227

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %88, %93
  br i1 %94, label %95, label %190

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @FR_NO_FILE, align 4
  store i32 %99, i32* %3, align 4
  br label %227

100:                                              ; preds = %95
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @create_chain(%struct.TYPE_9__* %103, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @FR_DENIED, align 4
  store i32 %111, i32* %3, align 4
  br label %227

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %116, i32* %3, align 4
  br label %227

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @FR_DISK_ERR, align 4
  store i32 %121, i32* %3, align 4
  br label %227

122:                                              ; preds = %117
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = call i64 @sync_window(%struct.TYPE_9__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @FR_DISK_ERR, align 4
  store i32 %129, i32* %3, align 4
  br label %227

130:                                              ; preds = %122
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = call i32 @SS(%struct.TYPE_9__* %138)
  %140 = call i32 @mem_set(i64 %135, i32 0, i32 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i8* @clust2sect(%struct.TYPE_9__* %143, i32 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  store i8* %145, i8** %149, align 8
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %177, %130
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %151, %156
  br i1 %157, label %158, label %180

158:                                              ; preds = %150
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  store i32 1, i32* %162, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = call i64 @sync_window(%struct.TYPE_9__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* @FR_DISK_ERR, align 4
  store i32 %169, i32* %3, align 4
  br label %227

170:                                              ; preds = %158
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 5
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %174, align 8
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %150

180:                                              ; preds = %150
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 5
  %186 = load i8*, i8** %185, align 8
  %187 = sext i32 %181 to i64
  %188 = sub i64 0, %187
  %189 = getelementptr i8, i8* %186, i64 %188
  store i8* %189, i8** %185, align 8
  br label %190

190:                                              ; preds = %180, %87
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i8* @clust2sect(%struct.TYPE_9__* %196, i32 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 4
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %190, %53
  br label %202

202:                                              ; preds = %201, %52
  br label %203

203:                                              ; preds = %202, %23
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = call i32 @SS(%struct.TYPE_9__* %215)
  %217 = load i32, i32* @SZ_DIRE, align 4
  %218 = sdiv i32 %216, %217
  %219 = srem i32 %212, %218
  %220 = load i32, i32* @SZ_DIRE, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %211, %222
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* @FR_OK, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %203, %168, %128, %120, %115, %110, %98, %85, %80, %50, %21
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @SS(%struct.TYPE_9__*) #1

declare dso_local i32 @get_fat(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @create_chain(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @sync_window(%struct.TYPE_9__*) #1

declare dso_local i32 @mem_set(i64, i32, i32) #1

declare dso_local i8* @clust2sect(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
